<?php namespace Phphub\Registration;

class RegisterUserCommand {

    public $name;

    public $email;

    public $password;

    public $cat_one;

    public $cat_two;

    public $cat_three; 

    public $sex;

    function __construct($name, $email, $password, $cat_one, $cat_two, $cat_three, $sex )
    {
        $this->name = $name;
        $this->email = $email;
        $this->password = $password;
        $this->cat_one = $cat_one;
        $this->cat_two = $cat_two;
        $this->cat_three = $cat_three;
        $this->sex = $sex;
    }

} 
