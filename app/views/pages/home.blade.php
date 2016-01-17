@extends('layouts.default')

@section('content')

<div class="box text-center" id="tayo">
   @include('stats.statics')
   @include('stats.fido')
</div>

@include('ads.ads')


<div class="panel panel-default list-panel">
  <div class="panel-heading">
    <h3 class="panel-title text-left">
      
    </h3>

  </div>

  <div class="panel-body">
	@include('topics.partials.topics', ['column' => true])
  </div>

  <div class="panel-footer text-right">

  	<a href="#" style="visibility:hidden;">
  		{{ lang('&nbsp;') }}
  	</a>
  </div>
</div>

<!-- Nodes Listing -->
@include('nodes.partials.list')

@stop
