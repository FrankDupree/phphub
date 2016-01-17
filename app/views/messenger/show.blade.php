@extends('layouts.default')

@section('content')

<div class="box text-center" id="tayo">
  @include('stats.statics')
   @include('messenger.unread-count')
</div>

@include('ads.ads')
    <div class="row">
    <div class="col-md-6 msgpan">
        
 <h4 class="box"> <strong>Subject:</strong> {{$thread->subject}}</h4>
        @foreach($thread->messages as $message)
            <div class="media">
                <a class="pull-left" href="{{ route('users.show', [$message->user->id]) }}">
                    @if ($message->user->image_url)
                    <img src="{{profileImagePath() .$message->user->name.'/' .$message->user->image_url }}" alt="{{$message->user->name}}" class="img-circle" style="width=64" height="64">
                    @else
                    <img src="{{profileImagePath() .'blank.jpg' }}" alt="{{$message->user->name}}" class="img-circle" style="width=64" height="64">
                    @endif
                </a>

                <div class="media-body">
                    <h5 class="media-heading">{{$message->user->name}}</h5>
                    <p>{{$message->body}}</p>
                    <div class="text-muted"><small>Posted {{$message->created_at->diffForHumans()}}</small></div>
                </div>

            </div>
        @endforeach

        <h4>Reply message</h4>
        {{Form::open(['route' => ['messages.update', $thread->id], 'method' => 'PUT'])}}
        <!-- Message Form Input -->
        <div class="form-group">
            {{ Form::textarea('message', null, ['class' => 'form-control']) }}
        </div>
         <!-- Submit Form Input -->
        <div class="form-group">
            {{ Form::submit('Submit', ['class' => 'btn btn-primary form-control']) }}
        </div>
        </div>
          <div class="col-md-6">
         @if($users->count() > 0)
        <div class="checkbox mesag">
           <div class="alert alert-danger mesag ">
           <p>Note that you can only message users who follow you</p> 
           </div>

        <div class="alert alert-success mesag ">
       <p>Congrats!! You have {{$usero->followers->count()}} Phphub++ Followers.</p>
       <p>Select the checkbox of the user you would like to message.</p>
       <p>Checking more than one, enables multi user messaging.</p>
      </div>
        <ul>
        @foreach($usero->followers as $follower)
          <li> 
            <input id="{{$follower->name}}{{$follower->id}}" type="checkbox" name="recipients[]" value="{{$follower->id}}">
            <label for="{{$follower->name}}{{$follower->id}}" title="{{$follower->name}}">{{$follower->name}}</label>
         </li> 
        @endforeach
        </ul>
       </div>
       @endif
       </div>

        {{Form::close()}}
    
    </div>
@stop
