<?php

namespace App\Http\Controllers;

use App\Dathang;
use App\Sanpham;
use Illuminate\Http\Request;

class SanPhamController extends Controller
{
    function index() {
        $sanpham = Sanpham::get();
        return view('list_san_pham',['sanpham'=>$sanpham]);
    }
    function sanpham($id) {
        $sanpham = Sanpham::find($id);
        return view('sanpham',['sanpham'=>$sanpham]);
    }
    function datmua(Request $request) {
        Dathang::create($request->all());
        return redirect()->to('/');
    }   
}
