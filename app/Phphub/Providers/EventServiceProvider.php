<?php namespace Phphub\Providers;

use Illuminate\Support\ServiceProvider;

class EventServiceProvider extends ServiceProvider {

    /**
     * Register Phphub event listeners.
     */
    public function register()
    {
        $this->app['events']->listen('Phphub.*', 'Phphub\Handlers\EmailNotifier');
    }

}