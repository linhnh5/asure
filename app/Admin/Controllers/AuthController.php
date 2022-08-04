<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AuthController as BaseAuthController;
use Encore\Admin\Facades\Admin;
use Illuminate\Support\Facades\Auth;

class AuthController extends BaseAuthController
{
    public function redirectTo()
    {
        if (Admin::user()->isRole('mentor')) {
            return route('admin.students');
        }
        if (Admin::user()->isRole('student')) {
            return route('admin.mentors');
        }
        return '/';
    }
}
