@extends('layouts.default')

@section('title')
User Profile_@parent
@stop

@section('content')

<div class="users-show">

  <div class="col-md-3 box" style="padding: 15px 15px;">
    @include('users.partials.basicinfo')
  </div>

  <div class="main-col col-md-9 left-col">
  <div class="well alert-success">
        <p>  {{ lang('avatar_notice') }}</p>
    </div>


    <div class="panel panel-default">

      <div class="panel-body ">
        @include('layouts.partials.errors')

        {{ Form::model($user, ['route' => ['users.update', $user->id], 'method' => 'patch', 'files'=>'true']) }}
           
          <div class="form-group col-md-12">
             <label for="file">User Avatar:</label>
            {{ Form::file('image_url', null, ['class' => 'form-control', 'placeholder' => lang('thumbnail')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">First Name:</label>
            {{ Form::text('first_name', null, ['class' => 'form-control', 'placeholder' => lang('First Name')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">Last Name:</label>
            {{ Form::text('last_name', null, ['class' => 'form-control', 'placeholder' => lang('Last Name')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">City:</label>
            {{ Form::text('city', null, ['class' => 'form-control', 'placeholder' => lang('City')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">Company:</label>
            {{ Form::text('company', null, ['class' => 'form-control', 'placeholder' => lang('Company')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">Twitter handle:</label>
            {{ Form::text('twitter_account', null, ['class' => 'form-control', 'placeholder' => lang('twitter_placeholder')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">Website:</label>
            {{ Form::text('personal_website', null, ['class' => 'form-control', 'placeholder' => lang('personal_website_placebolder')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">Signature:</label>
            {{ Form::textarea('signature', null, ['class' => 'form-control',
                                              'rows' => 3,
                                              'placeholder' => lang('signature_placeholder')]) }}
          </div>

          <div class="form-group col-md-6">
          <label for="file">About You:</label>
            {{ Form::textarea('introduction', null, ['class' => 'form-control',
                                              'rows' => 3,
                                              'placeholder' => lang('introduction_placeholder')]) }}
          </div>

          <div class="form-group status-post-submit col-md-6">
            {{ Form::submit(lang('Publish'), ['class' => 'btn btn-primary', 'id' => 'user-edit-submit']) }}
          </div>


        {{ Form::close() }}

      </div>

    </div>
  </div>


</div>




@stop
