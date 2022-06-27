<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{

    public function get(): \Illuminate\Http\JsonResponse
    {
        try {
            $categories = auth()->user()->category()->get();
            return $this->success($categories, "Success fetch data");
        } catch (\Exception $e) {

            return $this->error("Error fetch data", $e->getMessage());
        }
    }

    public function create(CategoryRequest $request): \Illuminate\Http\JsonResponse
    {
        try {
            $user = auth()->user();
            $response = $user
                ->category()
                ->create($request->all());

            return $this->success($response, "Success submit data");
        } catch (\Exception $e) {

            return $this->error("Error submit data", $e->getMessage());
        }
    }

    public function update(CategoryRequest $request, Category $category): \Illuminate\Http\JsonResponse
    {
        try {
            $category->update($request->all());

            return $this->success($category, "Success update data");
        } catch (\Exception $e) {

            return $this->error("Error update data", $e->getMessage());
        }
    }

    public function destroy(Category $category): \Illuminate\Http\JsonResponse
    {
        try {
            $category->delete();

            return $this->success([], "Success delete data");
        } catch (\Exception $e) {

            return $this->error("Error delete data", $e->getMessage());
        }
    }
}
