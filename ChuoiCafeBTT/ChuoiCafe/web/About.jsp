

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
.breadcrumb-bgg {
  background-image: url(Images/breadcrumb-bg-2.jpg)
}

.breadcrumb-text p {
  color: #F28123;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 7px;
}

.breadcrumb-text h1 {
  font-size: 50px;
  font-weight: 900;
  color: #fff;
  margin: 0;
  margin-top: 20px;
}

.breadcrumb-section {
  padding: 150px 0;
  background-size: cover;
  background-position: center center;
  position: relative;
  z-index: 1;
  background-attachment: fixed;
  padding-top: 200px;
}

.breadcrumb-section:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";
  background-color: #07212e;
  z-index: -1;
  opacity: 0.8;
}

.client-avater {
  margin-bottom: 20px;
}

.client-meta h3 {
  font-size: 20px;
  font-weight: 600;
}

.client-meta h3 span {
  display: block;
  font-size: 70%;
  margin-top: 10px;
  color: #1d1d1d;
  font-weight: 600;
  opacity: 0.5;
}

p.testimonial-body {
  font-size: 17px;
  font-style: italic;
  width: 700px;
  margin: 0 auto;
  line-height: 1.8;
  color: #999999;
  margin-top: 20px;
}

.last-icon {
  margin-top: 20px;
  font-size: 25px;
  opacity: 0.3;
}

.client-avater img {
  max-width: 100px;
  border-radius: 50%;
  margin: 0 auto;
}

/* -----------------------------------------------------------------------------

# About Styles

----------------------------------------------------------------------------- */
a.video-play-btn {
  position: absolute;
  background-color: #F28123;
  color: #1d1d1d;
  width: 90px;
  height: 90px;
  text-align: center;
  line-height: 92px;
  border-radius: 50%;
  font-size: 20px;
  padding-left: 5px;
  display: block;
  z-index: 2;
  top: 50%;
  margin-top: -45px;
  -webkit-box-shadow: 0 0 20px #adadad;
  box-shadow: 0 0 20px #adadad;
  left: 50%;
  margin-left: -45px;
}

.abt-bg {
  background-image: url(Images/abt.jpg);
  height: 100%;
  width: 100%;
  background-size: cover;
  background-position: center;
  border-top-right-radius: 10px;
  border-bottom-left-radius: 10px;
  position: relative;
  z-index: 1;
  overflow: hidden;
}

.abt-bg:after {
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  content: "";
  background-color: #1d1d1d;
  opacity: 0.3;
}

.abt-section .abt-text {
  padding: 50px;
  padding-left: 30px;
}

.abt-text p {
  font-size: 15px;
  line-height: 1.6;
  margin-bottom: 10px;
}

.abt-text p.top-sub {
  opacity: 0.8;
  margin-bottom: 10px;
}

.abt-text p:last-child {
  margin-bottom: 0;
}

/* -----------------------------------------------------------------------------

# Shop Banner Styles

----------------------------------------------------------------------------- */
.shop-bannner {
  position: relative;
  background-color: #f5f5f5;
  background-image: url(Images/1.jpg);
  background-size: cover;
  padding: 110px 0px 115px;
}

.shop-bannner h3 {
  position: relative;
  font-size: 50px;
  line-height: 1.2em;
  margin-bottom: 0px;
}

.shop-bannner .sale-percent {
  position: relative;
  font-size: 60px;
  font-weight: 700;
  color: #F28123;
}

.shop-bannner .sale-percent span {
  position: relative;
  font-size: 24px;
  line-height: 1.1em;
  color: #1d1d1d;
  font-weight: 400;
  text-align: center;
  margin-right: 10px;
  display: inline-block;
}

/* -----------------------------------------------------------------------------

# About Page Styles

----------------------------------------------------------------------------- */
.feature-bgg {
  position: relative;
  margin: 150px 0;
}

.feature-bgg:after {
  background-image: url(Images/feature-bg.jpg);
  position: absolute;
  right: 0;
  top: 0;
  width: 40%;
  height: 100%;
  content: "";
  background-size: cover;
  background-position: center;
  border-top-left-radius: 5px;
  -webkit-box-shadow: 0 0 20px #cacaca;
  box-shadow: 0 0 20px #cacaca;
  border-bottom-left-radius: 5px;
}

.team-bgg-1 {
  background-image: url(Images/team-1.jpg);
}

.team-bgg-2 {
  background-image: url(Images/team-2.jpg);
}

.team-bgg-3 {
  background-image: url(Images/team-3.jpg);
}

.team-bgg-4 {
  background-image: url(Images/team-4.jpg);
}

.team-bgg {
  height: 400px;
  background-size: cover;
  background-position: center;
  border-radius: 5px;
  background-color: #ddd;
}

.single-team-item {
  position: relative;
}

.single-team-item h4 {
  font-size: 20px;
  font-weight: 600;
  text-align: center;
  margin-top: 15px;
  margin-bottom: 10px;
}

.single-team-item h4 span {
  font-size: 70%;
  display: block;
  margin-top: 10px;
  opacity: 0.7;
}

ul.social-link-team {
  position: absolute;
  bottom: 80px;
  left: 0;
  right: 0;
  margin: 0;
  padding: 0;
  list-style: none;
  text-align: center;
}

ul.social-link-team li {
  display: inline-block;
}

ul.social-link-team li a {
  color: #fff;
  background-color: #F28123;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  border-radius: 50%;
  display: block;
  margin: 5px;
}


</style>

<!DOCTYPE html>
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <div class="breadcrumb-section breadcrumb-bgg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Giám Giá Đơn Hàng</p>
						<h1>About us</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- featured section -->
	<div class="feature-bgg">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="featured-text">
						<h2 class="pb-3">Why <span class="orange-text">Bothomthit</span></h2>
						<div class="row">
							<div class="col-lg-6 col-md-6 mb-4 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-shipping-fast"></i>
									</div>
									<div class="content">
										<h3>Giao Hàng Tận Nhà</h3>
										<p>Cung cấp dịch vụ giao hàng tận nhà, giúp bạn thưởng thức hương vị tuyệt vời của cà phê nguyên chất mà không cần phải ra khỏi nhà. Đây là lựa chọn hoàn hảo cho những ngày bận rộn hoặc khi bạn muốn thư giãn tại nhà.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-money-bill-alt"></i>
									</div>
									<div class="content">
										<h3>Giá Cả Hợp Lý</h3>
										<p>Cam kết cung cấp sản phẩm chất lượng với giá cả phải chăng nhất. Bạn có thể thưởng thức cà phê ngon mà không lo lắng về việc tốn kém, điều này làm cho quán trở thành điểm đến yêu thích của nhiều người.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-briefcase"></i>
									</div>
									<div class="content">
										<h3>Đóng Gói Theo Yêu Cầu</h3>
										<p>Một điểm đặc biệt của quán cà phê Bothomthit là khả năng tùy chỉnh hộp đóng gói theo ý muốn của khách hàng. Bạn có thể chọn kích thước, loại hạt cà phê, và thậm chí là thiết kế bên ngoài của hộp đựng cà phê, tạo ra một món quà độc đáo hoặc thú vị cho người thân và bạn bè.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-sync-alt"></i>
									</div>
									<div class="content">
										<h3>Hoàn Tiền Nhanh Chóng</h3>
										<p>Cam kết sự hài lòng của khách hàng, và nếu có bất kỳ vấn đề nào xảy ra, họ sẵn lòng hoàn lại tiền một cách nhanh chóng và không gây bất kỳ phiền toái nào cho bạn. Điều này làm cho trải nghiệm mua sắm của bạn trở nên dễ dàng và tin cậy hơn.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end featured section -->

	<!-- shop banner -->
	<section class="shop-bannner">
    	<div class="container">
        	<h3>May sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
            <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
            <a href="#" class="cart-btn btn-lg">Shop Now</a>
        </div>
    </section>
	<!-- end shop banner -->

	<!-- team section -->
	<div class="mt-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">
						<h3>Nhóm <span class="orange-text">7</span></h3>
						<p>Rất tích cực thực hiện công việc</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-team-item">
						<div class="team-bgg team-bgg-1"></div>
						<h4>Thùy Dương <span>...</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-team-item">
						<div class="team-bgg team-bgg-2"></div>
						<h4>Bảo Trân <span>...</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
					<div class="single-team-item">
						<div class="team-bgg team-bgg-3"></div>
						<h4>Như Quỳnh <span>Bòa</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end team section -->

	
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
