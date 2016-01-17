@extends('layouts.default')

@section('content')

<div class="box text-center" id="tayo">
  @include('stats.statics')
  @include('messenger.unread-count')
</div>

@include('ads.ads')

    @if (Session::has('error_message'))
        <div class="alert alert-danger" role="alert">
            {{Session::get('error_message')}}
        </div>
    @endif
    @if($threads->count() > 0)
        @foreach($threads as $thread)
        <?php $class = $thread->isUnread($currentUserId) ? 'alert-info' : ''; ?>
        <div class="media alert {{$class}}">
            <h4 class="media-heading">{{link_to('messages/' . $thread->id, $thread->subject)}}</h4>
            <p>{{$thread->latestMessage->body}}</p>
            <p><small><strong>Creator:</strong> {{ $thread->creator()->name }}</small></p>
            <p><small><strong>Participants:</strong> {{ $thread->participantsString(Auth::id()) }}</small></p>
        </div>
        @endforeach
    @else
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>

            Sorry, no messages yet.
        </div>
    @endif
@stop
