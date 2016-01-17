@extends('layouts.default')

@section('title')
{{ lang('Please Login') }}_@parent
@stop

@section('content')
<div class="row">
    <div class="col-md-4 col-sm-4 col-xs-4s">
    <div class="alert-success alert opabar text-right">
       <p>If opportunity doesn't knock, build a door.</p>
       <small>-Milton Berle</small> 
    </div>
    </div>
</div>
<div class="row">
	<div class="col-md-12">
    <img src="{{art() .'op.png'}}" alt="" class="img-responsive pull-left">
    <div class="pull-left col-md-4 col-sm-4 col-xs-12">
    <br><br><br><br><br>
		{{ Form::open(['route' => 'login_path']) }}
                <!-- Email Form Input -->
                <div class="form-group">
                    {{ Form::label('email', 'Email:') }}
                    {{ Form::email('email', null, ['class' => 'form-control', 'required' => 'required']) }}
                </div>

                <!-- Password Form Input -->
                <div class="form-group">
                    {{ Form::label('password', 'Password:') }}
                    {{ Form::password('password', ['class' => 'form-control', 'required' => 'required']) }}
                </div>

                <!-- Sign In Input -->
                <div class="form-group">
                    {{ Form::submit('Sign In', ['class' => 'btn btn-primary']) }}
                    
                </div>
            {{ Form::close() }}
            <p>
               <a href="{{ URL::route('register_path', null, ['class' => '']) }}">Create an account </a> |
               {{ link_to('/password/remind', 'Trouble logging in?') }}
            </p>

            </div>
	</div>	
</div>
@stop