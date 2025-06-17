<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function run(): void
    {
        User::create(
            [
                'name' => 'roby',
                'email' => 'a@a.com',
                'password' => Hash::make('password'),
                'avatar' => null,
                'url_avatar' => null,
                'phone' => null,
                'address' => null,
                'role' => 'admin',
            ]
        );
        User::create(
            [
                'name' => 'yona',
                'email' => 'u@u.com',
                'password' => Hash::make('password'),
                'avatar' => null,
                'url_avatar' => null,
                'phone' => null,
                'address' => null,
                'role' => 'user',
            ]
        );
    }
}
