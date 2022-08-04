<?php

namespace Database\Seeders;

use Encore\Admin\Auth\Database\Permission;
use Encore\Admin\Auth\Database\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AdminPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $mentorRole = Role::query()->where('name', 'Mentor')->first();
        $studentRole = Role::query()->where('name', 'Student')->first();

        $permissionMentor = Permission::query()->create([
            'name'        => 'Mentor',
            'slug'        => 'admin.mentor',
            'http_method' => 'GET',
            'http_path'   => "/mentors\r\n/mentors/*",
        ]);
        $studentRole->permissions()->save($permissionMentor);

        $permissionStudent = Permission::query()->create([
            'name'        => 'Student',
            'slug'        => 'admin.student',
            'http_method' => 'GET',
            'http_path'   => "/students\r\n/students/*",
        ]);
        $mentorRole->permissions()->save($permissionStudent);
    }
}
