@extends('layouts.default')

@section('title')
{{ lang('Newly Registered User List') }}_@parent
@stop

@section('content')

@include('ads.ads')

<div class="users-index">

    <div class="box text-right" id="tayo">
    <span><strong> Total : {{ $siteStat->user_count }}</strong></span>
    </div>

    <div class="">
    @foreach ($users as $user)
        <div class="col-md-1 remove-padding-right">
            <div class="avatar">
              @if ($user->image_url)
     <a href="{{ route('users.show', $user->id) }}" class="users-index-{{ $user->id }}">
    <img class="img-thumbnail avatar" src="{{profileImagePath() .$user->name.'/' .$user->image_url }}" style="width:48px;height:48px;margin-bottom: 20px;">
    </a>
    @else
    <a href="{{ route('users.show', $user->id) }}" class="users-index-{{ $user->id }}">
        <img class="img-thumbnail avatar" src="{{profileImagePath() .'blank.jpg'}}" style="width:48px;height:48px;margin-bottom: 20px;">  
    </a>
    @endif
              </a>
            </div>
        </div>
    @endforeach
    </div>

</div>
@stop
