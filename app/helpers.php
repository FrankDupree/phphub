<?php

function cdn($filepath)
{
    if (Config::get('app.url_static')) {
        return Config::get('app.url_static') . $filepath;
    } else {
        return Config::get('app.url') . $filepath;
    }
}

function getCdnDomain()
{
    return Config::get('app.url_static') ?: Config::get('app.url');
}

function getUserStaticDomain()
{
    return Config::get('app.user_static') ?: Config::get('app.url');
}

function lang($text)
{
    return str_replace('phphub.', '', trans('phphub.'.$text));
}


function user_photos_path()
{
	return public_path() .'/uploads/imago/'.Auth::user()->name.'/';
}

function profileImagePath(){
 return URL::asset('uploads/imago') .'/';
}

function profileAdPath(){
 return URL::asset('uploads/ads') .'/';
}

function art(){
 return URL::asset('uploads/cliparts') .'/';
}
function fido($test)
    {
        switch ($test) {
            case 7:
            $labelo = lang('Health');
                break;
            case 8:
                $labelo = lang('Football');
                break;
            case 9:
                $labelo = lang('Tennis');
                break;
            case 10:
                $labelo = lang('Relationship');
                break;
            case 11:
                $labelo = lang('Business');
                break;
            case 12:
                $labelo = lang('Religion');
                break;
            case 13:
                $labelo = lang('Fashion');
                break;
            case 14:
                $labelo = lang('Housing');
                break;
            case 15:
                $labelo = lang('Job');
                break;
            case 16:
                $labelo = lang('Education');
                break;
            case 17:
                $labelo = lang('Law');
                break;

            default:
                break;
        }
        return $labelo;
    }