<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\FavorietproductsController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::apiResource('Products', ProductController::class);
Route::apiResource('Category', CategoryController::class);
Route::apiResource('Favorietproducts', FavorietproductsController::class);
Route::apiResource('User', UserController::class);

Route::get('Category/{id}/Products', [ProductController::class, 'indexCategory']);
Route::delete('Products/delete/{id}',[ProductController::class, 'delete' ]);
