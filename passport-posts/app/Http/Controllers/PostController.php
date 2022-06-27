<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Models\Post;

class PostController extends Controller
{
    public function getPost(Post $post)
    {
        try {

            return $this->success($post, "Success fetching data");
        } catch (\Exception $e) {

            return $this->error("Error fetching data", $e->getMessage(), 404);
        }
    }

    public function getPosts()
    {
        try {

            return $this->success(Post::paginate(10), "Success fetching data");
        } catch (\Exception $e) {

            return $this->error("Error fetching data", $e->getMessage(), 404);
        }
    }

    public function create(PostRequest $request)
    {
        try {
            $post = new Post();

            $post->fill([
                'title' => $request->title,
                'content' => $request->content,
                'user_id' => auth()->user()->id,
                'category_id' => $request->category_id,
                'image' => $request->image,
            ]);

            $post->saveOrFail();

            return $this->success($post, "Success submit data");
        } catch (\Exception $e) {

            return $this->error("Error submit data", $e->getMessage());
        }
    }

    public function update(PostRequest $request, Post $post)
    {
        try {
            $post->fill($request->all());

            $post->saveOrFail();

            return $this->success($post, "Success update data");
        } catch (\Exception $e) {

            return $this->error("Error update data", $e->getMessage());
        }

    }

    public function destroy(Post $post)
    {
        try {
            $post->delete();

            return $this->success([], "Success delete data");
        } catch (\Exception $e) {

            return $this->error("Error delete data", $e->getMessage());
        }
    }
}
