<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		String productID = "";
		if (request.getParameter("productID") != null) {
			productID = request.getParameter("productID");
			product = productDAO.getProduct(Long.parseLong(productID));
		}
	%>
	<jsp:include page="header.jsp"></jsp:include>


	<div class="container">
		<div class="product-details">
			<!--product-details-->
			<div class="col-sm-5">
				<div class="view-product">
					<img src="img/xe/1.png" alt="" />
				</div>
				<div id="similar-product" class="carousel slide"
					data-ride="carousel"></div>
			</div>
			<div class="col-sm-7">
				<div class="product-information">
					<!--/product-information-->
					<img src="images/product-details/new.jpg" class="newarrival" alt="" />
					<h2>
						Tên xe:
						<%=product.getProductName()%></h2>
					<span> <span>Giá: <%=product.getProductPrice()%></span><br>

					</span>
					<p>
						<b>Giới thiệu: </b><%=product.getProductDescription()%></p>
					<br>
					<br> <a
						href="CartServlet?command=plus&productID=<%=product.getProductID()%>">
						<button type="button" class="btn btn-fefault cart">
							<i class="fa fa-shopping-cart"></i> Thêm vào giỏ
						</button>
					</a>
				</div>
				<!--/product-information-->
			</div>
		</div>
		<!--/product-details-->







		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>