<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CategoryTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */

    public function test_Categories_ophalen()
    {
        $response = $this->get('api/Category');

        $response->assertStatus(200);

    }

    public function test_Categories_ophalen_op_id()
    {
        $response = $this->get('api/Category?id=1');

        $response->assertStatus(200);

    }

    public function test_Categories_delete()
    {
        $response = $this->delete('api/Category/1');

        $response->assertStatus(200);

    }

    public function test_Categories_update()
    {
        $response = $this->put('api/Category/1', ['name' => 'yaz']);

        $response->assertStatus(200);
    }



}
