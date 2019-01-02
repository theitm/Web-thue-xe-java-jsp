<%@page import="model.Cart"%>
<%@page import="model.Users"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<!--/head-->
<body>
	<%
  CategoryDAO categoryDAO = new CategoryDAO();
	Users users = new Users();
	if (session.getAttribute("user") != null) {
	    users = (Users) session.getAttribute("user");
	}
 	Cart cart = (Cart) session.getAttribute("cart");
	if (cart == null) {
    cart = new Cart();
    session.setAttribute("cart", cart); 
	}
%>
	<header id="header">
		<!--header-->
		<div class="header_top">
			<!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +84 213
										1879</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i>
										quants1997@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right"></div>
					</div>
				</div>
			</div>
		</div>
		<!--/header_top-->

		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.jsp"><h2>
									<span>V</span>-Arriver
								</h2></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<%if(users != null){ %>
								<li><a href="#"><i class="fa fa-user"></i><%=users.getUserEmail() %></a></li>
								<%}%>
								<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>
										Cart(<%=cart.countItem() %>)</a></li>
								<%if(users == null){ %>
								<li><a href="login.jsp"><i class="fa fa-lock"></i>
										Login</a></li>
								<%} else {%>

								<li><a href="login.jsp"><i class="fa fa-sign-out"></i>
										Thoat</a></li>

								<% } %>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->
		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.jsp" class="active">Trang chủ</a></li>
								<li class="dropdown"><a href="#">Danh Mục<i
										class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<%
                                    	for (Category c : categoryDAO.getListCategory()) {
                                    %>
										<li><a
											href="products.jsp?category=<%=c.getCategoryID()%>"> <%=c.getCategoryName()%>
										</a></li>
										<%}%>
									</ul></li>
								<li><a href="contact.jsp">Liên hệ</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search" />
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->
</body>
</html>