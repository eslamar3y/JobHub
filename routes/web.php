<?php

use App\Models\User;
use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


// Route::get('/hello', function () {
//     return response('<h1>Hello World</h1>', 200)
//         ->header('Content-Type', 'text/plain')
//         ->header('Auther', 'Sam');
// });

// // Wildcard Route

// Route::get('post/{id}', function ($id) {
//     // die and dump(used for debugging)
//     // dd($id);
//     // die, dumb and debugg(used for debugging and it will show some information)
//     ddd($id);
//     return "Post " . $id;
// })->where('id', '[0-9]+');


// // in search we can use request object to get the query string

// Route::get('/search', function (Request $request) {
//     return $request->name . ' ' . $request->age;
// });

// All listings
Route::get('/', [ListingController::class, 'index']);

// show create form
Route::get('/listings/create', [ListingController::class, 'create'])->middleware('auth');

// Store listing Data
Route::post('/listings', [ListingController::class, 'store'])->middleware('auth');

// show edit form
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])->middleware('auth');

// update listing data
Route::PUT('/listings/{listing}', [ListingController::class, 'update'])->middleware('auth');

// delete listing data
Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])->middleware('auth');

// Manage listings
Route::get('/listings/manage', [ListingController::class, 'manage'])->middleware('auth');

// one listing
Route::get('/listings/{listing}', [ListingController::class, 'show']);

// Show register/login form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');

// create user
Route::post('/users', [UserController::class, 'store']);

// logout
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

// Show login form
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');

// create user
Route::post('/users/authenticate', [UserController::class, 'authenticate']);
