<?php

namespace Database\Seeders;

use Encore\Admin\Auth\Database\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Role::query()->create([
            'name' => 'Mentor',
            'slug' => 'mentor',
        ]);
        Role::query()->create([
            'name' => 'Student',
            'slug' => 'student',
        ]);
    }
}
