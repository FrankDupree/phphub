
@if ($topic->is_excellent || $topic->is_wiki)
  <div class="ribbon">
    @if ($topic->is_excellent)
      <div class="ribbon-excellent">
          <i class="fa fa-trophy"></i> This post was marked as an Excenllent Post.
      </div>
    @endif

    @if ($topic->is_wiki)
      <div class="ribbon-wiki">
          <i class="fa fa-graduation-cap"></i>This is Post Has been enlisted in the Forum Hall Of Fame
      </div>
    @endif
  </div>
@endif
