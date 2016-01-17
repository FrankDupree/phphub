

<ul class="nav nav-tabs user-info-nav" role="tablist">
  <li class="{{ $user->present()->userinfoNavActive('users.show') }}">
  	<a href="{{ route('users.show', $user->id) }}" >Rep</a>
  </li>
  <li class="{{ $user->present()->userinfoNavActive('users.replies') }}">
  	<a href="{{ route('users.replies', $user->id) }}" >Replies</a>
  </li>
  <li class="{{ $user->present()->userinfoNavActive('users.topics') }}">
  	<a href="{{ route('users.topics', $user->id) }}" >Topics</a>
  </li>
  <li class="{{ $user->present()->userinfoNavActive('users.favorites') }}">
  	<a href="{{ route('users.favorites', $user->id) }}" >Favorites</a>
  </li>
</ul>
