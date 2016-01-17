@extends('layouts.default')

@section('content')
    <div class="row">
        <div class="col-md-6">
        <div class="row">
            <h3 style="margin-left:15px;">Reset Your Password</h3>

            {{ Form::open() }}
                {{ Form::hidden('token', $token) }}
                
                <!-- Email Form Input -->
                <div class="form-group col-md-12 col-sm-12">
                    {{ Form::label('email', 'Email:') }}
                    {{ Form::email('email', null, ['class' => 'form-control', 'required']) }}
                </div>
                
                <!-- Password Form Input -->
                <div class="form-group col-md-6 col-sm-6">
                    {{ Form::label('password', 'Password:') }}
                    {{ Form::password('password', ['class' => 'form-control', 'required']) }}
                </div>
                
                <!-- Password_confirmation Form Input -->
                <div class="form-group col-md-6 col-sm-6">
                    {{ Form::label('password_confirmation', 'Password Confirmation:') }}
                    {{ Form::password('password_confirmation', ['class' => 'form-control', 'required']) }}
                </div>

                <!-- submit Form Input -->
                <div class="form-group col-md-12 col-sm-12">
                    {{ Form::submit('Submit', ['class' => 'btn btn-primary form-control']) }}
                </div>
            {{ Form::close() }}
        </div>
        </div>
    </div>
@stop