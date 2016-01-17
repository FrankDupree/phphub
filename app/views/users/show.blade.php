@extends('layouts.default')

@section('title')
{{{ $user->name }}} {{ lang('Basic Info') }}_@parent
@stop

@section('content')

<div class="users-show">

  <div class="col-md-3 box" style="padding: 15px 15px;">
    @include('users.partials.basicinfo')
  </div>

  <div class="main-col col-md-9 left-col">

    @if ($user->introduction)
      <div class="box text-center">{{{ $user->introduction }}}</div>
    @endif

    @if ($user->is_banned)
      <div class="text-center alert alert-info"><b>{{ lang('This user is banned!') }}</b></div>
    @endif

    <div class="panel panel-default">
      @include('users.partials.infonav', ['current' => 'basicinfo'])
        <div class="box" style="text-align:center;">
        <hr />
             <p class="col-md-4">{{ $user->present()->postCount }}</p> 
             <p class="col-md-4">{{ $user->present()->followerCount }}</p>
                @if (Auth::check())
             @unless ($user->is($currentUser))
                @include ('users.partials.follow-form')
             @else
             <button type="submit" class="btn btn-primary" disabled="disabled">Follow {{ $user->username }}</button>
             @endif
          @else
          <button type="submit" class="btn btn-primary" disabled="disabled">Follow {{ $user->username }}</button>
          @endif

             
        <hr />
      
             
           
             
             
             
        <div class="row">
          <div class="col-md-12" style="text-align:left;">
      
      @foreach ($user->followers as $follower)
         @include ('users.partials.avatar', ['size' => 25, 'user' => $follower])
      @endforeach

      </div>
        </div>   
      
      </div>

    </div>

    <div class="panel panel-default">

      <ul class="nav nav-tabs user-info-nav" role="tablist">
        <li class="active"><a href="#recent_replies" role="tab" data-toggle="tab">{{ lang('Recent Replies') }}</a></li>
        <li><a href="#recent_topics" role="tab" data-toggle="tab">{{ lang('Recent Topics') }}</a></li>
      </ul>

      <div class="panel-body remove-padding-vertically remove-padding-horizontal">
        <!-- Tab panes -->
        <div class="tab-content">

          <div class="tab-pane active" id="recent_replies">

            @if (count($replies))
              @include('users.partials.replies')
            @else
              <div class="empty-block">{{ lang('You Dont have any comments yet') }}</div>
            @endif

          </div>

          <div class="tab-pane" id="recent_topics">
            @if (count($topics))
              @include('users.partials.topics')
            @else
              <div class="empty-block">{{ lang('You Dont have any feeds Yet') }}</div>
            @endif
          </div>

        </div>
      </div>

    </div>
  </div>


</div>




@stop
