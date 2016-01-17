@extends('layouts.default')


@section('content')
@include('ads.ads')
<div class="row">
<div class="col-md-12">
  

  @if ($currentUser->isFollowedBy($user) || Entrust::can('manage_users'))
   <h4>Page {{$user->first_name}} {{$user->last_name}}</h4>            
  @else
    <h4 class="alert alert-danger">Sorry {{$currentUser->first_name}}, you cant page this user</h4>
  @endif
</div>

<div class="col-md-6">
<div class="row">
<div class="col-md-6 col-sm-4">
<a href="{{ route('users.show', [$user->id]) }}">
    @if ($user->image_url)
    <img class="img-thumbnail users-show-avatar" src="{{profileImagePath() .$user->name.'/' .$user->image_url }}" alt="{{ $user->name }}" style="width: 206px;margin: 0 4px 15px;min-height:190px; border:none;">
@else
    <img class="img-thumbnail users-show-avatar" src="{{profileImagePath() .'blank.jpg'}}" alt="No Picture" style="width: 206px;margin: 0 4px 15px;min-height:190px; border:none;">  
@endif
  </a>
</div>
  <div class="col-md-12 col-sm-8">
  <div class="well pagame">
    @if ($user->introduction)
      <p>{{{ $user->introduction }}}</p>
    @endif
  </div>
</div>
  </div>
</div>

  


              <div class="col-md-6">
                @if ($currentUser->isFollowedBy($user) || Entrust::can('manage_users'))
                {{Form::open(['route' => 'messages.store'])}}
                
               
                    <!-- Subject Form Input -->
                    <div class="form-group">
                        {{ Form::text('subject', null, ['class' => 'form-control']) }}
                    </div>

                    <!-- Message Form Input -->
                    <div class="form-group">
                        {{ Form::textarea('message', null, ['class' => 'form-control']) }}
                    </div>
                    
                    <!-- Submit Form Input -->
                    <div class="form-group">
                        {{ Form::submit('Submit', ['class' => 'btn btn-primary form-control']) }}
                    </div>
                     <div class="checkbox" style="opacity:0;">
                   <label title="{{$user->name}}">
                   <input type="checkbox" name="recipients[]" value="{{$user->id}}" checked>{{$user->name}}</label>
                    </div>
                
                {{Form::close()}}
                @else
                <img class="" src="{{art() .'messager.png'  }}" alt="" height="290">

                @endif
            </div>
</div>

@stop