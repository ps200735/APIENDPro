<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_Users_ophalen()
    {
        $response = $this->get('api/User');

        $response->assertStatus(200);

    }

     public function test_Users_ophalen_op_email()
    {
        $response = $this->get('api/User?email=Hamzah');

        $response->assertStatus(200);

    }

    public function test_Users_delete()
    {
        $response = $this->delete('api/User/1');

        $response->assertStatus(200);

    }
    public function test_Users_update()
    {
        $response = $this->put('api/User/1', ['email' => 'yaz']);

        $response->assertStatus(200);
    }
}
