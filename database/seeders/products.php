<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class products extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            [
                'name' => "Pizza Margherita",
                'price' => '11.99',
                'description' => 'Lekker pizza',
                'image' => 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/5802fab5-fdce-468a-a830-43e8001f5a72/Derivates/c00dc34a-e73d-42f0-a86e-e2fd967d33fe.jpg',
                'category_id' => 1
            ],[
                'name' => "Pizza Kabab",
                'price' => '12.99',
                'description' => 'Lekker pizza',
                'image' => 'https://media-cdn.tripadvisor.com/media/photo-s/0f/70/d2/91/pizza-kebab-completa.jpg',
                'category_id' => 1
            ],[
                'name' => "Cola",
                'price' => '2.99',
                'description' => 'Doosje cola',
                'image' => 'https://www.kantoorartikelen.nl/autoimg/2444880/1200x1200/resize/coca-cola-regular-frisdrank-0-33-l-blik-pak-24-x-330-milliliter-.jpg',
                'category_id' => 3
            ],[
                'name' => "Cola Zero",
                'price' => '1.99',
                'description' => 'Doosje cola',
                'image' => 'https://www.kantoorartikelen.nl/autoimg/2444889/1024x768/ffffff/
                coca-cola-zero-frisdrank-0-33-l-blik-pak-24-stuks-.jpg',
                'category_id' => 3
            ],[
                'name' => "Pasta Salade",
                'price' => '4.99',
                'description' => 'Pasta met salade',
                'image' => 'https://miljuschka.nl/wp-content/uploads/2021/02/Pastasalade.jpg',
                'category_id' => 2
            ],[
                'name' => "Pasta Carbonara",
                'price' => '5.99',
                'description' => 'Pasta met carbonara',
                'image' => 'https://www.leukerecepten.nl/wp-content/uploads/2021/11/Lactosevrije-pasta-carbonara-scaled.jpg',
                'category_id' => 2
            ],[
                'name' => "Bitterballen",
                'price' => '1.99',
                'description' => 'Bitterballen',
                'image' => 'https://images.vrt.be/orig/2018/06/13/d283d7de-6f07-11e8-abcc-02b7b76bf47f.png',
                'category_id' => 4
            ],[
                'name' => "mini loempia's",
                'price' => '1.99',
                'description' => 'mini loempia',
                'image' => 'https://www.ducafrozenfood.nl/wp-content/uploads/2021/03/AZ_mini-loempias.jpg',
                'category_id' => 4
            ],[
                'name' => "Combo box",
                'price' => '11.99',
                'description' => 'Combo Set',
                'image' => 'https://media.socialdeal.nl/bedrijf/dominos-tilburg-centrum-17061912200189.jpg',
                'category_id' => 5
            ]
        ]);
    }
    }

