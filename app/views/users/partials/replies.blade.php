<ul class="list-group">
  @foreach ($replies as $index => $reply)
   <li class="list-group-item">

    @if (count($reply->topic))
      <a href="{{ route('topics.show', [$reply->topic_id]) }}" title="{{{ $reply->topic->title }}}" class="remove-padding-left">
          {{{ $reply->topic->title }}}
      </a>
      <span class="meta">
          <span>•</span> <span title="{{ $reply->created_at }}">{{ $reply->created_at->diffForHumans() }}</span>
      </span>
      <div class="reply-body markdown-reply content-body">
{{ $reply->body }}
      </div>
    @else
      <div class="deleted text-center">{{ lang('Post has been deleted.') }}</div>
    @endif

  </li>
  @endforeach
</ul>
