@extends('layouts.default')

@section('content')

@include('ads.ads')

{{Form::open(['route' => 'messages.store'])}}
<div class="row">
<div class="col-md-6">
    <!-- Subject Form Input -->
    <div class="form-group">
        {{ Form::label('subject', 'Subject', ['class' => 'control-label']) }}
        {{ Form::text('subject', null, ['class' => 'form-control']) }}
    </div>

    <!-- Message Form Input -->
    <div class="form-group">
        {{ Form::label('message', 'Message', ['class' => 'control-label']) }}
        {{ Form::textarea('message', null, ['class' => 'form-control']) }}
    </div>


    <!-- Submit Form Input -->
    <div class="form-group">
        {{ Form::submit('Submit', ['class' => 'btn btn-primary form-control']) }}
    </div>
</div>

<div class="col-md-6">
    @if($users->count() > 0)
    <div class="alert alert-danger mesag">
       <p>Note that you can only message users who follow you</p> 
       </div>
    <div class="alert alert-success mesag">
       <p>You have {{$usero->followers->count()}} Phphub++ Followers.</p>
       <p>Select the checkbox of the user you would like to message.</p>
       <p>Checking more than one, enables multi user messaging.</p>
    </div>
    <div class="checkbox">
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

    

   


</div>
{{Form::close()}}
@stop
