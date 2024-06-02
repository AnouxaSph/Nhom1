<?php

namespace App\Http\Controllers;

use App\Lienhe;
use App\Sanpham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    function index() {
        $sanpham = Sanpham::limit(6)->get();
        return view('home',['sanpham'=>$sanpham]);
    }

    function lienhe(Request $request) {
        Lienhe::create($request->all());
        return redirect()->back();
    }
}
