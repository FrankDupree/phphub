<div style="text-align: center;">
  <a href="">
    @if ($user->image_url)
    <img class="img-thumbnail users-show-avatar" src="{{profileImagePath() .$user->name.'/' .$user->image_url }}" alt="{{ $user->name }}" style="width: 206px;margin: 4px 4px 15px;min-height:190px; border:none;">
@else
    <img class="img-thumbnail users-show-avatar" src="{{profileImagePath() .'blank.jpg'}}" alt="No Picture" style="width: 206px;margin: 4px 4px 15px;min-height:190px; border:none;">  
@endif
  </a>
</div>
<dl class="dl-horizontal">
  <dt><label>Nickname:</label></dt><dd><strong>&nbsp; {{{ $user->name }}}</strong></dd>

  @if ($user->real_name)
    <dt class="adr"><label> {{ lang('Real Name') }}:</label></dt><dd><span class="org">&nbsp; {{{ $user->real_name }}}</span></dd>
  @endif

  @if ($user->company)
    <dt class="adr"><label> {{ lang('Company') }}:</label></dt><dd><span class="org">&nbsp; {{{ $user->company }}}</span></dd>
  @endif

  @if ($user->city)
    <dt class="adr"><label> {{ lang('City') }}:</label></dt><dd><span class="org">&nbsp;<i class="fa fa-map-marker"></i>  {{{ $user->city }}}</span></dd>
  @endif

  @if ($user->twitter_account)
  <dt><label><span>Twitter</span>:</label></dt>
  <dd>
    <a href="https://twitter.com/{{ $user->twitter_account }}" rel="nofollow" class="twitter" target="_blank">&nbsp; <i class="fa fa-twitter"></i>{{{ '@' . $user->twitter_account }}}
    </a>
  </dd>
  @endif

  @if ($user->personal_website)
  <dt><label>{{ lang('Blog') }}:</label></dt>
  <dd>
    <a href="http://{{ $user->personal_website }}" rel="nofollow" target="_blank" class="url">
      &nbsp; <i class="fa fa-globe"></i> {{{ str_limit($user->personal_website, 22) }}}
    </a>
  </dd>
  @endif

  @if ($user->signature)
    <dt><label>{{ lang('Signature') }}:</label></dt><dd><span>&nbsp; {{{ $user->signature }}}</span></dd>
  @endif
  <dt>
    <label>Joined:</label>
  </dt>
  <dd><span>&nbsp;{{ $user->created_at->diffForHumans() }}</span></dd>
   @if (Auth::check())
  <dt>
    <label>Message:</label>
  </dt>
  <dd><span>&nbsp;<a href="{{route('pageme', $user->fullname)}}"> <i class="fa fa-envelope"></i> </a></span></dd>
   @else
    <dt>
    <label>Message:</label>
  </dt>
  <dd><span>&nbsp;<a href="{{route('register_path')}}"> <i class="fa fa-envelope"></i> Log in to message</a></span></dd>
   @endif
</dl>
<div class="clearfix"></div>

@if ($currentUser && ($currentUser->id == $user->id || Entrust::can('manage_users')))
  <a class="btn btn-primary btn-block" href="{{ route('users.edit', $user->id) }}" id="user-edit-button">
    <i class="fa fa-edit"></i> {{ lang('Edit Profile') }}
  </a>
@endif

@if ($currentUser && Entrust::can('manage_users') && ($currentUser->id != $user->id))
  <a data-method="post" class="btn btn-{{ $user->is_banned ? 'warning' : 'danger' }} btn-block" href="javascript:void(0);" data-url="{{ route('users.blocking', $user->id) }}" id="user-edit-button" onclick=" return confirm('{{ lang('Are you sure want to '. ($user->is_banned ? 'unblock' : 'block') . ' this User?') }}')">
    <i class="fa fa-times"></i> {{ $user->is_banned ? lang('Unblock User') : lang('Block User') }}
  </a>
@endif


