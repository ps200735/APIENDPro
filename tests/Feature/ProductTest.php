<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class ProductTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_Products_ophalen()
    {
        $response = $this->get('api/Products');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_id()
    {
        $response = $this->get('api/Products?ID=1');

        $response->assertStatus(200);

    }

    public function test_Products_delete()
    {
        $response = $this->delete('api/Products/delete/1');

        $response->assertStatus(200);

    }

    // public function test_Products_update()
    // {
    //     $response = $this->put('api/Products/update/1', ['name' => 'yaz']);

    //     $response->assertStatus(200);
    // }

    // public function test_Products_store()
    // {
    //     $response = $this->post('api/Products', ['name' => 'yaz']);

    //     $response->assertStatus(200);
    // }


    public function test_Products_ophalen_op_name()
    {
        $response = $this->get('api/Products?name=cola');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_category()
    {
        $response = $this->get('api/Category/1/Products');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_category_op_name()
    {
        $response = $this->get('api/Category/1/Products?name=cola');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_sort()
    {
        $response = $this->get('api/Products?sort=name');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_sort_op_name()
    {
        $response = $this->get('api/Products?sort=name&name=cola');

        $response->assertStatus(200);

    }

    public function test_Products_ophalen_op_sort_op_category()
    {
        $response = $this->get('api/Category/1/Products?sort=name');

        $response->assertStatus(200);

    }   

}
