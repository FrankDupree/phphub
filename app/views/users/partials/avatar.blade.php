  @if ($user->image_url)
     <a href="{{ route('users.show', [$user->id]) }}" class="users-index-{{ $user->id }}">
    <img class="img-thumbnail avatar" src="{{profileImagePath() .$user->name.'/' .$user->image_url }}" style="width:48px;height:48px;margin-bottom: 5px; border:0;" alt="{{$user->name}}">
    </a>
    @else
    <a href="{{ route('users.show', [$user->id]) }}" class="users-index-{{ $user->id }}">
     <img class="img-thumbnail avatar" src="{{profileImagePath() .'blank.jpg'}}" style="width:48px;height:48px;margin-bottom: 5px; border:0;" alt="{{$user->name}}">  
    </a>
  @endif
  