<?php  namespace Phphub\Forms;

use Laracasts\Validation\FormValidator;

class UserUpdateForm extends FormValidator
{
    protected $rules = [
        'image_url' => 'image|mimes:jpeg,png',
        'first_name'    => 'required',
        'last_name' => 'required',
        'city' => 'required',
        'fullname' => 'required',
        'company' => '',
        'twitter_account' => '',
        'personal_website' => '',
        'signature' => '',
        'introduction' => ''

    ];

     protected $messages = [
        'image_url.image' => 'Please upload a valid image',
        'image_url.mimes' => 'jpg and png only',
       
    ];

  
}




