<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VA | Trang chủ</title>
</head>
<body>
	<jsp:include page="header.jsp" ></jsp:include>

	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>V</span>-Arriver</h1>
									<h2>Thuê xe ngay hôm nay</h2>
									<p> Nhấn vào để tìm kiếm chiếc xe của mình. </p>
									<button type="button" class="btn btn-default get">Thuê ngay</button>
								</div>
								<div class="col-sm-6">
									<img src="img/xe/6.png" class="girl img-responsive" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>V</span>-Arriver</h1>
									<h2>Thuê xe ngay hôm nay</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Thuê ngay</button>
								</div>
								<div class="col-sm-6">
									<img src="img/xe/4.png" class="girl img-responsive" alt="" />
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>V</span>-Arriver</h1>
									<h2>Thuê xe ngay hôm nay</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
									<button type="button" class="btn btn-default get">Thuê ngay</button>
								</div>
								<div class="col-sm-6">
									<img src="img/xe/2.png" class="girl img-responsive" alt="" />
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>