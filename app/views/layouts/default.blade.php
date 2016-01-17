<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="UTF-8">

		<title>
			@section('title')
Phphub++  - Business Forum
			@show
		</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<meta name="keywords" content="Forum, Business Forum, Opportunity, Freelancing Forum" />
		<meta name="author" content="FrankDupree" />
		<meta name="description" content="@section('description')Phphub++ is a business forum where great minds meet, partner and solve business challenges together  @show" />

        <link rel="stylesheet" href="{{ URL::asset('assets/css/'.Asset::styles('frontend')) }}">
        <link rel="stylesheet" href="{{ URL::asset('assets/css/bootflat.min.css') }}">

        <link rel="shortcut icon" href="{{ URL::asset('/favicon.ico') }}"/>

        <script>
            Config = {
                'cdnDomain': '{{ getCdnDomain() }}',
                'user_id': {{ $currentUser ? $currentUser->id : 0 }},
                'routes': {
                    'notificationsCount' : '{{ route('notifications.count') }}',
                    'upload_image' : '{{ route('upload_image') }}'
                },
                'token': '{{ csrf_token() }}',
            };
        </script>

	    @yield('styles')

	</head>
	<body id="body">

		<div id="wrap">

			@include('layouts.partials.nav')

			<div class="container">

				@include('flash::message')

				@yield('content')

			</div>

		</div>

	  <div id="footer" class="footer">
	  <div style="background-color:#858d93; height:30px; padding:5px;">
	  </div>
	    <div class="container">
	      <div class="row">
	      	<div class="col-md-6 small">
	      		
	      	</div>
	      	<div class="col-md-6">
	      	<p class="pull-right" style="color:#fff; margin-top:45px; font-size:65%;">
	      	  &copy; copyright  2016 <a href="http://www.">Phphub++</a>

	      </p>
	      	</div>
	      </div>
	    </div>
	  </div>

        <script src="{{ URL::asset('assets/js/'.Asset::scripts('frontend')) }}"></script>
        

	    @yield('scripts')

        @if (App::environment() == 'production')
		<script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-53903425-1', 'auto');
          ga('send', 'pageview');

        </script>
        @endif

	</body>
</html>
