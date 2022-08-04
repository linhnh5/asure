<?php

namespace Database\Seeders;

use Encore\Admin\Auth\Database\Menu;
use Encore\Admin\Auth\Database\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AdminMenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $mentorRole = Role::query()->where('name', 'Mentor')->first();
        $studentRole = Role::query()->where('name', 'Student')->first();
        //
        $mentorMenu = Menu::query()->create([
            'parent_id' => 0,
            'order' => 10,
            'title' => 'Mentor',
            'icon' => 'fa-users',
            'uri' => '/mentors',
        ]);

        $mentorMenu->roles()->save($studentRole);
        $studentMenu = Menu::query()->create([
            'parent_id' => 0,
            'order' => 11,
            'title' => 'Student',
            'icon' => 'fa-users',
            'uri' => '/students',
        ]);

        $studentMenu->roles()->save($mentorRole);
    }
}
