 @if (Auth::check())
     <p>Welcome, {{Auth::user()->name;}}:
    @else 
    <p>Welcome Guest:
@endif
<br>
<strong>Phphub++&nbsp;&nbsp;Stats</strong>:  <span><strong>Total Members</strong>: {{ $siteStat->user_count }}</span> |
    <span> <strong>   Job Posts</strong>: {{ $siteStat->topic_count }}</span> |
     <span><strong>   Total Replies</strong>: {{ $siteStat->reply_count }} </span> |
     <span> <a href="{{URL::route('users.index')}}">View all Users</a></span>
     <span> <a href="{{URL::route('register_path')}}">Join</a></span>
     <span style="background-color:#fff;"><a href="{{ route('feed') }}" style="color: #E5974E; font-size: 14px;" target="_blank"><i class="fa fa-rss"></i></a></span>
</p>


  