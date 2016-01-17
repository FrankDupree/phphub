<?php namespace Phphub\Mailers;

use User;

class UserMailer extends Mailer {

    /**
     * @param User $user
     */
    public function sendWelcomeMessageTo(User $user)
    {
        $subject = 'Glad to have you onboard the Opprs Business Forum!';
        $view = 'emails.registration.confirm';

        return $this->sendTo($user, $subject, $view);
    }

}

