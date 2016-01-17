<ul class="pull-right list-inline remove-margin-bottom topic-filter">

    <li>
        <a {{ App::make('Topic')->present()->topicFilter('recent') }}>
            <i class="glyphicon glyphicon-time"></i>Recent
        </a>
        <span class="divider"></span>
    </li>

    <li>
        <a {{ App::make('Topic')->present()->topicFilter('excellent') }}>
            <i class="glyphicon glyphicon-ok"> </i>Excellent
        </a>
        <span class="divider"></span>
    </li>

    <li>
        <a {{ App::make('Topic')->present()->topicFilter('vote') }}>
            <i class="glyphicon glyphicon-thumbs-up"> </i>Vote
        </a>
        <span class="divider"></span>
    </li>

    <li>
        <a {{ App::make('Topic')->present()->topicFilter('noreply') }}>
            <i class="glyphicon glyphicon-eye-open"></i>Noreply
        </a>
    </li>
</ul>
