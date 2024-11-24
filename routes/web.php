<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BooksController;
use App\Http\Controllers\CartController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/home', [BooksController::class, 'index']);
Route::get('/allbooks', [BooksController::class, 'allbooks']);
Route::get('/aboutUs', function () {
    return view('books.about');
});
Route::get('/books/{slug}', [BooksController::class, 'show']);
Route::get('/search', [BooksController::class, 'search']);

Route::get('/userProfile', [AuthController::class, 'profileEdit'])->middleware('auth');
Route::put('/profile/update', [AuthController::class, 'profileUpdate'])->middleware('auth')->name('profile.update');

Route::get('/login', [AuthController::class, 'login'])->middleware('guest');
Route::post('/login', [AuthController::class, 'post_login'])->middleware('guest');
Route::get('/register', [AuthController::class, 'register'])->middleware('guest');
Route::post('/register', [AuthController::class, 'post_register'])->middleware('guest');
Route::get('/logout', [AuthController::class, 'logout'])->middleware('auth');

Route::get('myCart', [CartController::class, 'show']);
Route::post('/my_cart', [CartController::class, 'store'])->name('cart.store');
Route::get('/minus/{rowId}', [CartController::class, 'minus'])->name('cart.minus');
Route::get('/plus/{rowId}', [CartController::class, 'plus'])->name('cart.plus');
Route::get('/destroy/{rowId}', [CartController::class, 'destroy'])->name('cart.destroy');
