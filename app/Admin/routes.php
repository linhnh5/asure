<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->get('/students', 'OtherUserController@students')->name('students');
    $router->get('/mentors', 'OtherUserController@mentors')->name('mentors');
    $router->get('/mentors/{id}', 'OtherUserController@showMentor')->name('mentors_show');
    $router->get('/students/{id}', 'OtherUserController@showStudent')->name('student_show');

});
