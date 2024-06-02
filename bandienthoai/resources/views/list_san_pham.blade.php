@extends('layout')
@section('content')
    <div class="brand_color">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Sản phẩm</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="brand">
        <div class="container">

        </div>
        <div class="brand-bg">
            <div class="container">
                <div class="row">
                    @foreach ($sanpham as $item)
                        <a href="/san-pham/{{$item->id}}" class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                            <div class="brand_box">
                                <img src="/storage/{{ $item->anh }}" alt="img" />
                                <h3><strong class="red">{{ $item->gia }} đ</strong></h3>
                                <span>{{ $item->tensanpham }}</span>
                                <i><img src="{{ asset('assets/images/star.png') }}" /></i>
                                <i><img src="{{ asset('assets/images/star.png') }}" /></i>
                                <i><img src="{{ asset('assets/images/star.png') }}" /></i>
                                <i><img src="{{ asset('assets/images/star.png') }}" /></i>
                            </div>
                        </a>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
@endsection
