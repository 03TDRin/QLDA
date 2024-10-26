

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
.breadcrumb-bg {
  background-image: url(Images/breadcrumb-bg.jpg)
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

.form-title {
  margin-bottom: 25px;
}

.form-title h2 {
  font-size: 25px;
}

.form-title p {
  font-size: 15px;
  line-height: 1.8;
}

.contact-form form p input[type=text], .contact-form form p input[type=tel], .contact-form form p input[type=email] {
  width: 49%;
  padding: 15px;
  border: 1px solid #ddd;
  border-radius: 3px;
}

.contact-form form p textarea {
  border: 1px solid #ddd;
  padding: 15px;
  height: 200px;
  border-radius: 3px;
  width: 100%;
  resize: none;
}

.contact-form-wrap {
  background-color: #FBFBFB;
  padding: 45px 30px;
  border-radius: 5px;
}

.contact-form-box {
  padding-left: 40px;
  margin-bottom: 30px;
}

.contact-form-box h4 {
  font-size: 20px;
  font-weight: 600;
  position: relative;
  margin-bottom: 10px;
}

.contact-form-box h4 i {
  position: absolute;
  left: -13%;
  color: #F28123;
  top: 2px;
}

.contact-form-box p {
  line-height: 1.8;
  opacity: 0.8;
}

.contact-form-wrap .contact-form-box:last-child {
  margin: 0;
}

.find-location p {
  color: #fff;
  font-size: 40px;
  margin: 0;
  font-weight: 600;
  padding: 95px 0;
}

.find-location p i {
  margin-right: 10px;
  color: #F28123;
}

#form_status span {
  color: #fff;
  font-size: 14px;
  font-weight: normal;
  background: #E74C3C;
  width: 100%;
  text-align: center;
  display: inline-block;
  padding: 10px 0px;
  border-radius: 3px;
  margin-bottom: 18px;
}

#form_status span.loading {
  color: #333;
  background: #eee;
  border-radius: 3px;
  padding: 18px 0px;
}

#form_status span.notice {
  color: yellow;
}

#form_status .success {
  color: #fff;
  text-align: center;
  background: #2ecc71;
  border-radius: 3px;
  padding: 30px 0px;
}

#form_status .success i {
  color: #fff;
  font-size: 45px;
  margin-bottom: 14px;
}

#form_status .success h3 {
  color: #fff;
  margin-bottom: 10px;
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
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Nhận Hỗ Trợ 24/7</p>
						<h1>Contact Us</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- contact form -->
	<div class="contact-from-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mb-5 mb-lg-0">
					<div class="form-title">
						<h2>Have you any question?</h2>	
                                        </div>
				 	<div id="form_status"></div>
					<div class="contact-form">
						<form type="POST" id="123-contact" onSubmit="return valid_datas( this );">
							<p>
								<input type="text" placeholder="Name" name="name" id="name">
								<input type="email" placeholder="Email" name="email" id="email">
							</p>
							<p>
								<input type="tel" placeholder="Phone" name="phone" id="phone">
								<input type="text" placeholder="Subject" name="subject" id="subject">
							</p>
							<p><textarea name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea></p>
							<input type="hidden" name="token" value="FsWga4&@f6aw" />
							<p><input type="submit" value="Submit"></p>
						</form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="contact-form-wrap">
						<div class="contact-form-box">
							<h4><i class="fas fa-map"></i> Address</h4>
							<p>219 An Dương Vương, Q.Tân Bình
                                                            <br>137/2 Thảo Điền, Q.2
                                                            <br> TP.Hồ Chí Minh
                                                        </p>
						</div>
						<div class="contact-form-box">
							<h4><i class="far fa-clock"></i> Time</h4>
							<p>T2 - T6: 8 Sáng đến 6 Tối 
                                                            <br> T7 - CN: 10 Sáng đến 8 Tối 
                                                        </p>
						</div>
						<div class="contact-form-box">
							<h4><i class="fas fa-address-book"></i> Contact</h4>
							<p>Phone: +84 123456789 
                                                            <br> Email: bothomthit@gmail.com
                                                        </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end contact form -->

	<!-- find our location -->
	<div class="find-location blue-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<p> <i class="fas fa-map-marker-alt"></i> Find Our Location</p>
				</div>
			</div>
		</div>
	</div>
	<!-- end find our location -->

	<!-- google map section -->
        <div class="embed-responsive embed-responsive-21by9">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5767226795246!2d106.64303631534708!3d10.796286592274494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752e087cbebd47%3A0x8ae6e7ec3e1c7fc1!2zSOG7kyBWaeG7h3QgVGjDoG5oIHThuq1uIFBow7ogQuG6o2MgVMOibiwgUGjhu5UgQW5oLCBIdeG6rW4gTmFt!5e0!3m2!1sen!2sbd!4v1576846473265!5m2!1sen!2sbd" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" class="embed-responsive-item"></iframe>
        </div>

	<!-- end google map section -->
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
