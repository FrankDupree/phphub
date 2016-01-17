<div class="col-md-3 side-bar">


  <div class="panel panel-default corner-radius">

    @if (Auth::check())
      <div class="panel-body text-center" id="pat">
        <a href="
          {{ isset($node) ? URL::route('topics.create', ['node_id' => $node->id]) : URL::route('topics.create') ; }}
          " class="btn btn-success col-md-12">
          <i class="glyphicon glyphicon-pencil"> </i> {{ lang('New Topic') }}
        </a>
    </div>
    @else
     <div class="panel-body text-center" id="pat">
        <a href="{{ URL::route('register_path');}}" 
         class="btn btn-danger col-md-12">
          <i class="glyphicon glyphicon-user"> </i> Create an Account
        </a>
    </div>
    @endif
  </div>


   @if (Route::currentRouteName() == 'topics.index')
      
    <div class="box" id="grit">
    <h3>Phphub++</h3>
    <hr />
    <p>Howdy, <br />welcome to the Phphub++ Business Forum, 
    thousands of opportunities await you. Rememberto
    Observe the Forum rules when creating or positing
    job feeds. <br /> Have A Nice Day! 


    </p>
     <hr />
      
    </div>
  @endif

  @if (isset($nodeTopics) && count($nodeTopics))
    <div class="panel panel-default corner-radius">
      <div class="panel-heading text-center">
        <h3 class="panel-title">{{ lang('Topics With The Same Category') }}</h3>
      </div>
      <div class="panel-body">
        <ul class="list" style="margin-top:-12px;">

          @foreach ($nodeTopics as $nodeTopic)
            <li>
            <a href="{{ route('topics.show', $nodeTopic->id) }}" class="btn-forum" style=" color:#fff;">
              {{{ $nodeTopic->title }}}
            </a>
            </li>
          @endforeach

        </ul>
      </div>
    </div>
  @endif

</div>
<div class="clearfix"></div>
