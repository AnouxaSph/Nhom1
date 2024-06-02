@extends('layout')
@section('content')
    <section class="slider_section">
        <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="{{ asset('assets/images/banner.jpg') }}" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption relative">
                            <h1>Phân phối chính hãng điện thoại tại việt nam</h1>
                            <a class="buynow" href="#lienhe">Liên hệ</a>
                            <ul class="social_icon">
                                <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- about -->
    <div class="about">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-5 co-sm-l2">
                    <div class="about_img">
                        <figure><img src="{{ asset('assets/images/about.png') }}" alt="img" /></figure>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-7 co-sm-l2">
                    <div class="about_box">
                        <h3>Về chúng tôi</h3>
                        <p>Chúng tôi là công ty phân phối chính hãng các dòng điện thoại di động tại thị trường Việt Nam. Với cam kết mang đến những sản phẩm chất lượng cao và công nghệ tiên tiến, chúng tôi hợp tác cùng các nhà sản xuất uy tín trên toàn thế giới. Chúng tôi cung cấp dịch vụ hậu mãi chuyên nghiệp và tận tâm, đảm bảo nguồn gốc rõ ràng của sản phẩm. Sứ mệnh của chúng tôi là đáp ứng mọi nhu cầu của người tiêu dùng, từ điện thoại cao cấp đến phổ thông, giúp khách hàng tiếp cận công nghệ mới nhất một cách dễ dàng.</p>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end about -->

    <!-- brand -->
    <div class="brand">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Sản phẩm của chúng tôi</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="brand-bg">
            <div class="container">
                <div class="row">
                    @foreach ($sanpham as $item)
                        <a href="/san-pham/{{$item->id}}" class="col-xl-4 col-lg-4 col-md-4 col-sm-6 margin">
                            <div class="brand_box">
                                <img src="/storage/{{$item->anh}}" alt="img" />
                                <h3><strong class="red">{{$item->gia}} đ</strong></h3>
                                <span>{{$item->tensanpham}}</span>
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

    <!-- end brand -->
    <!-- contact -->
    <div class="contact" id="lienhe">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Liên hệ đặt hàng</h2>
                    </div>
                    <form class="main_form" action="/lienhe">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                <input class="form-control" placeholder="Họ tên của bạn" type="text" name="hoten">
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                                <input class="form-control" placeholder="Email" type="text" name="gmail">
                            </div>
                            <div class="col-md-12">
                                <textarea class="textarea" placeholder="Nội dung" name="noidung"></textarea>
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
    <!-- end contact -->
@endsection
