<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class FavorietproductsTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_Favorietproducts_ophalen()
    {
        $response = $this->get('api/Favorietproducts');

        $response->assertStatus(200);

    }

    public function test_Favorietproducts_ophalen_op_user()
    {
        $response = $this->get('api/Favorietproducts?User=1');

        $response->assertStatus(200);

    }

    public function test_Favorietproducts_delete()
    {
        $response = $this->delete('api/Favorietproducts/1');

        $response->assertStatus(200);

    }

    public function test_Favorietproducts_update()
    {
        $response = $this->put('api/Favorietproducts/1', ['User' => '1']);

        $response->assertStatus(200);
    }

    // public function test_Favorietproducts_store()
    // {
    //     $response = $this->post('api/Favorietproducts', ['User' => '1', 'Product' => '1']);

    //     $response->assertStatus(200);
    // }


}
