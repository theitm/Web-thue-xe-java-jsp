<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VA | San Pham</title>
</head>
<body>

	<%
		ProductDAO productDAO = new ProductDAO();
		String category_id = "";
		if (request.getParameter("category") != null) {
			category_id = request.getParameter("category");
		}
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="features_items">
			<!--features_items-->
			<div class="breadcrumbs">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Danh mục</li>
				</ol>
			</div>
			<%
				for (Product p : productDAO.getListProductByCategory(Long.parseLong(category_id))) {
			%>
			<div class="col-sm-4">
				<div class="product-image-wrapper">
					<div class="single-products">
						<div class="productinfo text-center">
							<a href="detail.jsp?productID=<%=p.getProductID()%>"><img
								src="<%=p.getProductImage()%>" alt="" /></a>
							<h2><%=p.getProductPrice()%>
								VND
							</h2>
							<p><%=p.getProductName()%></p>
							<a
								href="CartServlet?command=plus&productID=<%=p.getProductID()%>">
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i> Thêm vào giỏ
								</button>
							</a>
						</div>

					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
