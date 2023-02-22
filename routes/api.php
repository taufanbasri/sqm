<?php

use App\Http\Controllers\LeadsController;
use App\Http\Controllers\SalesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('leads', LeadsController::class)->except(['create', 'edit']);
Route::resource('sales', SalesController::class)->only(['index']);
Route::get('sales/{id}/leads', [SalesController::class, 'leads']);
