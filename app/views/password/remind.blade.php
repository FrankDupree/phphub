@extends('layouts.default')

@section('content')
<div class="row"><br><br><br><br>
        <div class="col-md-4 col-sm-6 col-xs-12">
            <h4>Need to reset your password?</h4>

            {{ Form::open() }}
                <!-- Email Form Input -->
                <div class="form-group">
                    {{ Form::label('email', 'Email:') }}
                    {{ Form::email('email', null, ['class' => 'form-control', 'required']) }}
                </div>

                <!-- Reset Form Input -->
                <div class="form-group">
                    {{ Form::submit('Reset Password', ['class' => 'btn btn-primary form-control']) }}
                </div>
            {{ Form::close() }}
        </div>
    </div>

@stop