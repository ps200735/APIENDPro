<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class systemusers extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('system_user')->insert([
            [
                'name' => "Hamzah",
                'email' => '123@gmail.com',
                'password' => '11',
                'rol' => 'Admin',

            ],[
                'name' => "Yazan",
                'email' => '111@gmail.com',
                'password' => '11',
                'rol' => 'Klant',

            ],
        ]);
    }
}
