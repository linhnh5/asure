<?php

namespace App\Admin\Controllers;

use Encore\Admin\Auth\Database\Role;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Controllers\UserController;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Illuminate\Support\Facades\Auth;

class OtherUserController extends UserController
{
    //
    public function title()
    {
        return parent::title(); // TODO: Change the autogenerated stub
    }

    public function students(Content $content)
    {
        $userModel = config('admin.database.users_model');
        $studentRole = Role::query()->where('name', 'Student')->first();

        $grid = new Grid(new $userModel());
        $grid->model()->join('admin_role_users', 'admin_role_users.user_id', '=', 'admin_users.id')
            ->where('role_id', $studentRole->id);

        $grid->column('id', 'ID')->sortable();
        $grid->column('username', trans('admin.username'));
        $grid->column('name', trans('admin.name'));
        $grid->column('roles', trans('admin.roles'))->pluck('name')->label();
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));
        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableDelete();
            $actions->disableEdit();
        });
        $grid->tools(function (Grid\Tools $tools) {
            $tools->batch(function (Grid\Tools\BatchActions $actions) {
                $actions->disableDelete();
            });

        });
        $grid->disableCreateButton(true);

        return $content
            ->title('Students')
            ->description('Student list')
            ->body($grid);
    }

    public function mentors(Content $content)
    {
        $userModel = config('admin.database.users_model');
        $mentorRole = Role::query()->where('name', 'Mentor')->first();

        $grid = new Grid(new $userModel());
        $grid->model()->join('admin_role_users', 'admin_role_users.user_id', '=', 'admin_users.id')
            ->where('role_id', $mentorRole->id);

        $grid->column('id', 'ID')->sortable();
        $grid->column('username', trans('admin.username'));
        $grid->column('name', trans('admin.name'));
        $grid->column('roles', trans('admin.roles'))->pluck('name')->label();
        $grid->column('created_at', trans('admin.created_at'));
        $grid->column('updated_at', trans('admin.updated_at'));
        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableDelete();
            $actions->disableEdit();
        });
        $grid->tools(function (Grid\Tools $tools) {
            $tools->batch(function (Grid\Tools\BatchActions $actions) {
                $actions->disableDelete();
            });

        });
        $grid->disableCreateButton(true);

        return $content
            ->title('Mentors')
            ->description('Mentor list')
            ->body($grid);
    }

    public function showStudent($id, Content $content)
    {
        return $content
            ->title('Student')
            ->description($this->description['show'] ?? trans('admin.show'))
            ->body($this->detail($id));
    }
    public function showMentor($id, Content $content)
    {
        return $content
            ->title('Mentor')
            ->description($this->description['show'] ?? trans('admin.show'))
            ->body($this->detail($id));
    }
}
