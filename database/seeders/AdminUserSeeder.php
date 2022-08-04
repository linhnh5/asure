<?php

namespace Database\Seeders;

use Encore\Admin\Auth\Database\Administrator;
use Encore\Admin\Auth\Database\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Mentor
        $mentorRole = Role::query()->where('name', 'Mentor')->first();
        $studentRole = Role::query()->where('name', 'Student')->first();
        if ($mentorRole) {
            $mentor = Administrator::query()->create([
                'username' => 'Mentor_Demo',
                'password' => Hash::make('password'),
                'name' => 'Mentor Demo',
                'avatar' => null,
            ]);
            $mentor->roles()->save($mentorRole);
        }
        // Student
        if ($studentRole) {
            $st = Administrator::query()->create([
                'username' => 'Student_Demo',
                'password' => Hash::make('password'),
                'name' => 'Student Demo',
                'avatar' => null,
            ]);
            $st->roles()->save($studentRole);
        }
    }
}
