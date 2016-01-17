<?php

class PagesController extends BaseController
{

    protected $topic;

    public function __construct(Topic $topic)
    {
        parent::__construct();
        $this->topic = $topic;
    }

    /**
     * The home page
    
    public function home()
    {
        
        $topics = $this->topic->getTopicsWithFilter('excellent');
        $nodes  = Node::allLevelUp();
        return View::make('pages.home', compact('topics', 'nodes'));
    }
      */

     public function home()
    {
       
        if(Auth::user()){
           $catone = Auth::user()->cat_one;
           $cat1 = (int)$catone;
           $cattwo = Auth::user()->cat_two;
           $cat2  = (int)$cattwo;
           $catthree = Auth::user()->cat_three;
           $cat3  = (int)$catthree;
           $topics = Topic::with('user')
                    ->whereIn('node_id', [$cat1, $cat2, $cat3])->get();
        }

        else{
           $topics = $this->topic->getTopicsWithFilter('excellent');
        }
         $nodes  = Node::allLevelUp();
         return View::make('pages.home', compact('topics', 'nodes', 'users'));   
        
    }

    /**
     * About us page
     */
    public function about()
    {
        return View::make('pages.about');
    }

    /**
     * Community WIKI
     */
    public function wiki()
    {
        $topics = $this->topic->getWikiList();
        return View::make('pages.wiki', compact('topics'));
    }

    /**
     * Search page, using google's.
     */
    public function search()
    {
        $query = Purifier::clean(Input::get('q'));
        return Redirect::away('https://www.google.com/search?q=site:phphub++.com ' . $query, 301);
    }

    /**
     * Feed function
     */
    public function feed()
    {
        $topics = Topic::excellent()->recent()->limit(20)->get();

        $channel =[
            'title' => 'phphub++ - Business Forum',
            'description' => 'Opportunity business goal driven forum',
            'link' => URL::route('feed')
        ];

        $feed = Rss::feed('2.0', 'UTF-8');

        $feed->channel($channel);

        foreach ($topics as $topic) {
            $feed->item([
                'title' => $topic->title,
                'description|cdata' => str_limit($topic->body, 200),
                'link' => URL::route('topics.show', $topic->id),
                'pubDate' => date('Y-m-d', strtotime($topic->created_at)),
                ]);
        }

        return Response::make($feed, 200, array('Content-Type' => 'text/xml'));
    }

    /**
     * Sitemap function
     */
    public function sitemap()
    {
        return App::make('Phphub\Sitemap\Builder')->render();
    }
}
