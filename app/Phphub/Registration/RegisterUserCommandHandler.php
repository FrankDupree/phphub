<?php namespace Phphub\Registration;

use Laracasts\Commander\CommandHandler;
use Phphub\Users\UserRepository;
use Laracasts\Commander\Events\DispatchableTrait;
use User;

class RegisterUserCommandHandler implements CommandHandler {

    use DispatchableTrait;

    /**
     * @var UserRepository
     */
    protected $repository;

    /**
     * @param UserRepository $repository
     */
    function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Handle the command
     *
     * @param $command
     * @return mixed
     */
    public function handle($command)
    {
        $user = User::register(
            $command->name, $command->email, $command->password, $command->cat_one, $command->cat_two, $command->cat_three, $command->sex
        );

        $this->repository->save($user);

        $this->dispatchEventsFor($user);

        return $user;
    }

}