<div class="meta inline-block" >

  <a href="{{ route('nodes.show', $topic->node->id) }}" class="remove-padding-left">
    {{{ $topic->node->name }}}
  </a>
  •
  <a href="{{ route('users.show', $topic->user->id) }}">
    {{{ $topic->user->name }}}
  </a>
  •
  <span>{{ $topic->created_at->diffForHumans() }}</span>
  •

  @if (count($topic->lastReplyUser))
    {{ lang('Last Reply by') }}
      <a href="{{{ URL::route('users.show', [$topic->lastReplyUser->id]) }}}">
        {{{ $topic->lastReplyUser->name }}}
      </a>
     <span>{{ $topic->created_at->diffForHumans() }}</span>
    •
  @endif

  {{ $topic->view_count }} {{ lang('Reads') }}
</div>
<div class="clearfix"></div>
