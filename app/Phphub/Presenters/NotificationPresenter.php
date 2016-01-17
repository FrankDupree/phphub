<?php namespace Phphub\Presenters;

use Laracasts\Presenter\Presenter;
use Route;

class NotificationPresenter extends Presenter
{
    public function lableUp()
    {
        switch ($this->type) {
            case 'new_reply':
            $lable = lang('Your post has a new reply:');
                break;
            case 'attention':
                $lable = lang('Attented post has new reply:');
                break;
            case 'at':
                $lable = lang('Mentioned you At:');
                break;
            case 'topic_favorite':
                $lable = lang('Favorited your post:');
                break;
            case 'topic_attent':
                $lable = lang('Attented your post:');
                break;
            case 'topic_upvote':
                $lable = lang('Up Vote your post');
                break;
            case 'reply_upvote':
                $lable = lang('Up Vote your reply');
                break;
            case 'topic_mark_wiki':
                $lable = lang('has mark your post as wiki:');
                break;
            case 'topic_mark_excellent':
                $lable = lang('has recomended your post:');
                break;
            case 'comment_append':
                $lable = lang('Commented post has new update:');
                break;
            case 'attention_append':
                $lable = lang('Attented post has new update:');
                break;

            default:
                break;
        }
        return $lable;
    }
}
