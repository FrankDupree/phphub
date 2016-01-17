<?php namespace Phphub\Forms;

use Laracasts\Validation\FormValidator;

class RegistrationForm extends FormValidator {

    /**
     * Validation rules for the registration form.
     *
     * @var array
     */
    protected $rules = [
        'name' => 'required|unique:users',
        'email'    => 'required|email|unique:users',
        'password' => 'required',
        'password2' => 'required|same:password',
        'cat_one' => 'required',
        'cat_two' => 'required',
        'cat_three' => 'required',
        'sex' => 'required'

    ];

}

