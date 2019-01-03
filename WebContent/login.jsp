<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VA | Đăng ký . Đăng nhập</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section id="form">
		<!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>Đăng nhập</h2>
						<%if(request.getParameter("error")!=null){%>
						<div>
							<p style="color: red"><%=request.getParameter("error")%></p>
						</div>
						<%}%>


						<form action="UsersServlet" method="POST">

							<input type="text" name="emaill" placeholder="Email" /> <input
								type="password" name="passl" placeholder="Password" /> <span>
								<input type="checkbox" class="checkbox"> Ghi nhớ tài
								khoản
							</span> <input type="hidden" value="login" name="command">
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div>
					<!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form">
						<h2>Đăng ký mới!</h2>
						<form action="UsersServlet" method="POST">
							<input type="text" name="email" placeholder="Email Address" /> <input
								type="password" name="pass" placeholder="Password" /> <input
								type="hidden" value="insert" name="command">
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/form-->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>