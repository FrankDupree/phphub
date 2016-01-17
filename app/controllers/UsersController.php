<?php

use Phphub\Github\GithubUserDataReader;
use Intervention\Image\Facades\Image;
use Phphub\Users\UserRepository;

class UsersController extends BaseController
{
    
     /**
     * @var UserRepository
     */
    protected $userRepository;

    public function __construct(Topic $topic, UserRepository $userRepository)
    {
        parent::__construct();

        $this->beforeFilter('auth', ['only' => ['edit', 'update', 'destroy']]);
        $this->topic = $topic;
        $this->userRepository = $userRepository;
    }

    public function index()
    {
        $users = User::recent()->take(48)->get();

        return View::make('users.index', compact('users'));
    }

    public function show($id)
    {
        $user = User::findOrFail($id);
        $topics = Topic::whose($user->id)->recent()->limit(10)->get();
        $replies = Reply::whose($user->id)->recent()->limit(10)->get();

        return View::make('users.show', compact('user', 'topics', 'replies'));
    }

    public function pageMe($fullname)
    {

        if(Auth::user()){
          $user = $this->userRepository->findByFullname($fullname);
          $users = User::where('id', '!=', Auth::id())->get();
          return View::make('pageme.index',compact('user', 'users')); 
        }else{
           Flash::message(lang('You must be logged in to message users'));
           return Redirect::route('login');
        }
        
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        $this->authorOrAdminPermissioinRequire($user->id);

        return View::make('users.edit', compact('user', 'topics', 'replies'));
    }

    public function update($id)
    {
        $user = User::findOrFail($id);
        $this->authorOrAdminPermissioinRequire($user->id);
        $data = Input::only('first_name','last_name', 'fullname', 'city', 'company', 'twitter_account', 'personal_website', 'signature', 'introduction', 'image_url');
        $data['fullname'] = trim(Input::get('first_name')).'.'.trim(Input::get('last_name'));
        if (Input::hasFile('image_url'))
            {
                if ($user['image_url'] =='') {
                    App::make('Phphub\Forms\UserUpdateForm')->validate($data);
                    $fileName = $data['image_url']->getClientOriginalName();
                    $path = user_photos_path();
                    $image = Image::make($data['image_url']->getRealPath());
                    File::exists($path) or File::makeDirectory($path);
                    $image->resize(180, 180)->save($path . '180-' .$fileName);  
                    $data['image_url'] = '180-' .$fileName;
                    $path = user_photos_path();
                    $user->update($data);
                    Flash::success(lang('Operation succeeded.'));
                    return Redirect::route('users.show', $id);
                }else{

                    //means there was an image, update and delete the old image
                    App::make('Phphub\Forms\UserUpdateForm')->validate($data);
                    $filename = $user['image_url'];
                    $fileName = $data['image_url']->getClientOriginalName();
                    $path = user_photos_path();
                    $image = Image::make($data['image_url']->getRealPath());
                    File::exists($path) or File::makeDirectory($path);
                     $image->resize(180, 180)->save($path . '180-' .$fileName);  
                    $data['image_url'] = '180-' .$fileName;
                    $path = user_photos_path();
                    File::delete($path.$filename);
                    $user->update($data);
                    Flash::success(lang('Operation succeeded.'));
                    return Redirect::route('users.show', $id); 
                }
              
           }else{   
                    $data['image_url'] = $user['image_url'];
                    $user->update($data);
                    Flash::success(lang('Operation succeeded.'));
                    return Redirect::route('users.show', $id);
                }

    
    }

    public function destroy($id)
    {
        $this->authorOrAdminPermissioinRequire($topic->user_id);
    }

    public function replies($id)
    {
        $user = User::findOrFail($id);
        $replies = Reply::whose($user->id)->recent()->paginate(15);

        return View::make('users.replies', compact('user', 'replies'));
    }

    public function topics($id)
    {
        $user = User::findOrFail($id);
        $topics = Topic::whose($user->id)->recent()->paginate(15);

        return View::make('users.topics', compact('user', 'topics'));
    }

    public function favorites($id)
    {
        $user = User::findOrFail($id);
        $topics = $user->favoriteTopics()->paginate(15);

        return View::make('users.favorites', compact('user', 'topics'));
    }

    public function blocking($id)
    {
        $user = User::findOrFail($id);
        $user->is_banned = (!$user->is_banned);
        $user->save();

        return Redirect::route('users.show', $id);
    }

    public function githubApiProxy($username)
    {
        $cache_name = 'github_api_proxy_user_'.$username;

        //Cache 1 day
        return Cache::remember($cache_name, 1440, function () use ($username) {
            $result = (new GithubUserDataReader())->getDataFromUserName($username);
            return Response::json($result);
        });
    }

    public function githubCard()
    {
        return View::make('users.github-card');
    }

    public function refreshCache($id)
    {
        $user =  User::findOrFail($id);

        $user_info = (new GithubUserDataReader())->getDataFromUserName($user->github_name);

        // Refresh the GitHub card proxy cache.
        $cache_name = 'github_api_proxy_user_'.$user->github_name;
        Cache::put($cache_name, $user_info, 1440);

        // Refresh the avatar cache.
        $user->image_url = $user_info['avatar_url'];
        $user->cacheAvatar();
        $user->save();

        Flash::message(lang('Refresh cache success'));

        return Redirect::route('users.edit', $id);
    }
}
