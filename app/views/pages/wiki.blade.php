@extends('layouts.default')

@section('title')
{{ lang('Community Wiki') }}_@parent
@stop

@section('content')

<div class="{{ count($topics) > 14 ?: 'col-md-6 col-md-offset-3' }} remove-padding-vertically" >

  <div class="panel panel-default">

    <div class="panel-heading">
      <h3 class="panel-title text-left" style="font-style:italic;">OPPRS HAll OF FAME</h3>
      <h5 class="panel-title text-right">Notable Business Topics and Deals</h5>
    </div>

    <div class="panel-body remove-padding-vertically remove-padding-horizontal">

    @if (count($topics))
      <div class="list-group">
        @foreach ($topics as $topic)
          <a class="list-group-item {{ count($topics) <= 14 ?: 'col-md-6' }}" href="{{ route('topics.show', [$topic->id]) }}" title="{{{ $topic->title }}}">
            {{{ str_limit($topic->title, '100') }}}
          </a>
        @endforeach
      </div>
    @else
      <div class="empty-block">{{ lang('Dont have any data Yet') }}~~</div>
    @endif

    </div>

  </div>

</div>


@stop
