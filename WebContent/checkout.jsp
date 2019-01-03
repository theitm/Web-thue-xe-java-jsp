<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout</title>
<body>

	<%
            Users users = (Users) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("login.jsp");
            }
        %>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">

		<div class="account">
			<h2 class="account-in">Thanh toán</h2>
			<form action="CheckOutServlet" method="POST">
				<div>
					<span>Địa chỉ nhận xe *</span> <input type="text"
						class="form-control" name="address">
				</div>
				<div>
					<span>Hình thức thanh toán *</span> <select class="form-control"
						name="payment">
						<option value="Bank transfer">Bank transfer</option>
						<option value="Live">Live</option>
					</select>
				</div>
				<p></p>
				<br> <input class="form-control" id="inputSuccess"
					type="submit" value="Nhấn để xác nhận thanh toán "> <br>
				<hr>
			</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
