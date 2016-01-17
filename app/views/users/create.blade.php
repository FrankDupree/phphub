@extends('layouts.default')

@section('title')
{{ lang('Please Login') }}_@parent
@stop

@section('content')
<div class="row">
	<div class="col-md-6">
    <div class="row">
    @if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<br><br><br>
<h3 class="synup">Phphub++  Sign Up...</h3>
		{{ Form::open(['route' => 'register_path']) }}

                 <!-- Email Form Input -->
                <div class="form-group col-md-6">
                    {{ Form::label('Username', 'Username:') }}
                    {{ Form::text('name', null, ['class' => 'form-control col-md-6', 'required' => 'required']) }}
                </div>
                <!-- Email Form Input -->
                <div class="form-group col-md-6">
                    {{ Form::label('email', 'Email:') }}
                    {{ Form::email('email', null, ['class' => 'form-control col-md-6', 'required' => 'required']) }}
                </div>
    
                <!-- Password Form Input -->
                <div class="form-group col-md-6">
                    {{ Form::label('password', 'Password:') }}
                    {{ Form::password('password', ['class' => 'form-control', 'required' => '']) }}
                </div>

                <!-- Password Form Input -->
                <div class="form-group col-md-6">
                    {{ Form::label('password2', 'Confirm Password:') }}
                    {{ Form::password('password2', ['class' => 'form-control', 'required' => '']) }}
                </div>

            <div class="form-group col-md-4">
            {{ Form::label('password', 'Category One:') }}
            <select class="selectpicker form-control" name="cat_one" >

              <option value="" disabled {{ App::make('Topic')->present()->haveDefaultNode($node, null) ?: 'selected'; }}>{{ lang('Select Category') }}</option>

              @foreach ($nodes['top'] as $top_node)
                <optgroup label="{{{ $top_node->name }}}">
                  @foreach ($nodes['second'][$top_node->id] as $snode)
                    <option value="{{ $snode->id }}" {{ App::make('Topic')->present()->haveDefaultNode($node, $snode) ? 'selected' : ''; }} >{{ $snode->name }}</option>
                  @endforeach
                </optgroup>
              @endforeach
            </select>
        </div>
            
        <div class="form-group col-md-4">
            {{ Form::label('password', 'Category Two:') }}
            <select class="selectpicker form-control" name="cat_two" >

        <option value="" disabled {{ App::make('Topic')->present()->haveDefaultNode($node, null) ?: 'selected'; }}>{{ lang('Select Category') }}</option>

              @foreach ($nodes['top'] as $top_node)
                <optgroup label="{{{ $top_node->name }}}">
                  @foreach ($nodes['second'][$top_node->id] as $snode)
                    <option value="{{ $snode->id }}" {{ App::make('Topic')->present()->haveDefaultNode($node, $snode) ? 'selected' : ''; }} >{{ $snode->name }}</option>
                  @endforeach
                </optgroup>
              @endforeach
            </select>
        </div>

        <div class="form-group col-md-4">
            {{ Form::label('password', 'Category Three:') }}
            <select class="selectpicker form-control" name="cat_three" >

        <option value="" disabled {{ App::make('Topic')->present()->haveDefaultNode($node, null) ?: 'selected'; }}>{{ lang('Select Category') }}</option>

              @foreach ($nodes['top'] as $top_node)
                <optgroup label="{{{ $top_node->name }}}">
                  @foreach ($nodes['second'][$top_node->id] as $snode)
                    <option value="{{ $snode->id }}" {{ App::make('Topic')->present()->haveDefaultNode($node, $snode) ? 'selected' : ''; }} >{{ $snode->name }}</option>
                  @endforeach
                </optgroup>
              @endforeach
            </select>
        </div>

        <div class="form-group col-md-12">
        {{ Form::radio('sex', 'male') }} <strong>Male</strong>
        {{ Form::radio('sex', 'female')}} <strong>Female</strong>
            
        </div>
        <!-- Sign In Input -->
        <div class="form-group col-md-12">
         {{ Form::submit('Sign In', ['class' => 'btn btn-primary']) }}
        </div>     
     </div>       
	</div>	
</div>
@stop