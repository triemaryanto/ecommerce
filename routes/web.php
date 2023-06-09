<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ConfigController;
use Illuminate\Support\Facades\File;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/docs', function () {
    return File::get(public_path() . '/documentation.html');
});
Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('layouts/admin/app');
    })->name('dashboard');
    Route::get('/dashboard/{pathMatch}', function () {
        return view('welcome');
    })->where('pathMatch', ".*");
    Route::get('/{any}', function () {
        return view('layouts/admin/app');
    })->where('any', '.*');
});



Route::get('/clear/route', [ConfigController::class, 'clearRoute']);
