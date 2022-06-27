<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class PostTest extends TestCase
{
    public function test_create_post()
    {
        $testData = [
            'title' => fake()->title,
            'content' => fake()->paragraph,
            'user_id' => 1,
            'category_id' => 1,
            'image' => fake()->image,
        ];

        $this->json('POST', 'api/v1/posts', $testData, ['Accept' => 'application/json'])
            ->assertStatus(401);
    }

    public function test_update_post()
    {
        $testData = [
            'title' => fake()->title,
            'content' => fake()->paragraph,
            'category_id' => 1,
            'image' => fake()->image,
        ];

        $this->json('PUT', 'api/v1/posts/1', $testData, ['Accept' => 'application/json'])
            ->assertStatus(401);
    }

    public function test_delete_post()
    {
        $this->json('DELETE', 'api/v1/posts/1', [], ['Accept' => 'application/json'])
            ->assertStatus(401);
    }

    public function test_view_post()
    {
        $this->json('GET', 'api/v1/posts', [], ['Accept' => 'application/json'])
            ->assertStatus(401);
    }
}
