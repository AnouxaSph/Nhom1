<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\SanPhamController;
use Illuminate\Support\Facades\Route;


Route::get('',[HomeController::class,'index']);
Route::get('lienhe',[HomeController::class,'lienhe']);
Route::get('/list-san-pham',[SanPhamController::class,'index']);

Route::get('/san-pham/datmua',[SanPhamController::class,'datmua']);
Route::get('/san-pham/{id}',[SanPhamController::class,'sanpham']);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
