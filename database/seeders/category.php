<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class category extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('category')->insert([
            [
                'name' => "Pizzas",
            ],[
                'name' => "Pasta",
            ],[
                'name' => "Drinks",
            ],[
                'name' => "Snacks",
            ],[
                'name' => "Combo Set",
            ]
        ]);
    }
}
