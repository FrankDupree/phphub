<?php

use Carbon\Carbon;
use Cmgmyr\Messenger\Models\Thread;
use Cmgmyr\Messenger\Models\Message;
use Cmgmyr\Messenger\Models\Participant;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;

class MessagesController extends BaseController
{
    /**
     * Just for testing - the user should be logged in. In a real
     * app, please use standard authentication practices
     */
    public function __construct()
    {
        parent::__construct();
        $this->beforeFilter('auth');
    }

    /**
     * Show all of the message threads to the user
     *
     * @return mixed
     */
    public function index()
    {
        $currentUserId = Auth::user()->id;

        // All threads, ignore deleted/archived participants
        //$threads = Thread::getAllLatest()->get();

        // All threads that user is participating in
        $threads = Thread::forUser($currentUserId)->latest('updated_at')->get();

        // All threads that user is participating in, with new messages
        // $threads = Thread::forUserWithNewMessages($currentUserId)->latest('updated_at')->get();

        return View::make('messenger.index', compact('threads', 'currentUserId'));
    }

    /**
     * Shows a message thread
     *
     * @param $id
     * @return mixed
     */
    public function show($id)
    {
        try {
            $thread = Thread::findOrFail($id);
        } catch (ModelNotFoundException $e) {
            Session::flash('error_message', 'The thread with ID: ' . $id . ' was not found.');

            return Redirect::to('messages');
        }
        
        // show current user in list if not a current participant
        // $users = User::whereNotIn('id', $thread->participantsUserIds())->get();

        // don't show the current user in list
        $usero= Auth::user();
        $userId = $usero['id'];
        $users = $thread->participants()->where('user_id', '=', $userId)->get();
        //$users = User::whereNotIn('id', $thread->participantsUserIds($userId))->get();  
        
    if($thread->hasParticipant(Auth::id())){
        $thread->markAsRead($userId);

        return view::make('messenger.show', compact('thread','users', 'usero'));
    }else{
        Session::flash('error_message', 'This conversation does not involves you');

        return redirect::to('messages');
    }







    }

    /**
     * Creates a new message thread
     *
     * @return mixed
     */
    public function create()
    {
        $users = User::where('id', '!=', Auth::id())->get();
        $usero= Auth::user();

        return View::make('messenger.create', compact('users', 'usero'));
    }

    /**
     * Stores a new message thread
     *
     * @return mixed
     */
    public function store()
    {
        $input = Input::all();

        $thread = Thread::create(
            [
                'subject' => $input['subject'],
            ]
        );

        // Message
        Message::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'body'      => $input['message'],
            ]
        );

        // Sender
        Participant::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'last_read' => new Carbon
            ]
        );

        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipants($input['recipients']);
        }

        return Redirect::to('messages');
    }

    /**
     * Adds a new message to a current thread
     *
     * @param $id
     * @return mixed
     */
    public function update($id)
    {
        try {
            $thread = Thread::findOrFail($id);
        } catch (ModelNotFoundException $e) {
            Session::flash('error_message', 'The thread with ID: ' . $id . ' was not found.');

            return Redirect::to('messages');
        }

        $thread->activateAllParticipants();

        // Message
        Message::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::id(),
                'body'      => Input::get('message'),
            ]
        );

        // Add replier as a participant
        $participant = Participant::firstOrCreate(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id
            ]
        );
        $participant->last_read = new Carbon;
        $participant->save();

        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipants(Input::get('recipients'));
        }

        return Redirect::to('messages/' . $id);
    }
}
