@extends('layout')
@section('content')
<div class="brand_color">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Đặt hàng</h2>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="about">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                <div class="about_img">
                    <figure><img src="/storage/{{ $sanpham->anh }}" alt="img" /></figure>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                <p>Giá bán : {{ $sanpham->gia }}đ</p>
                <p>Số lượng: {{ $sanpham->soluong }}</p>
                <br>
                <br>
                <form class="main_form" action="/san-pham/datmua">
                    <div class="row">
                        <input type="text" name="sapham_id" value="{{$sanpham->id}}" style="display: none;">
                        <div class="col-12">
                            <input class="form-control" placeholder="Họ tên của bạn" type="text" name="hoten">
                        </div>
                        <div class="col-12">
                            <input class="form-control" placeholder="Email" type="text" name="email">
                        </div>
                        <div class=" col-md-12">
                            <input class="form-control" placeholder="Điện thoại" type="text" name="sdt">
                        </div>
                        <div class=" col-md-12">
                            <input class="form-control" placeholder="Số lượng" type="text" name="soluong">
                        </div>
                        <div class=" col-md-12">
                            <button class="send">Gửi</button>
                        </div>
                    </div>
                </form>
           
        </div>
    </div>
</div>
</div>
@endsection