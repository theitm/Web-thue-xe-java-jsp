<%@page import="model.Item"%>
<%@page import="model.Cart"%>
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
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Sản phẩm</td>
							<td class="description">Tên sản phẩm</td>
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<%
								for (java.util.Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
							%>
							<td class="cart_product"><a href=""> <img
									src="<%=list.getValue().getProduct().getProductImage()%>"
									height=70px alt=""></a></td>
							<td class="cart_description">
								<h4>
									<a href=""><%=list.getValue().getProduct().getProductName()%></a>
								</h4>
							</td>
							<td class="cart_price">
								<p><%=list.getValue().getProduct().getProductPrice()%></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a> <input
										class="cart_quantity_input" type="text" name="quantity"
										value="<%=list.getValue().getQuantity()%>" autocomplete="off"
										size="2"> <a class="cart_quantity_down" href=""> -
									</a>
								</div>
							</td>

							<td class="cart_delete"><a class="cart_quantity_delete"
								href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"><i
									class="fa fa-times"></i></a></td>
						</tr>
						<%
							}
						%>
						<tr>
							<td colspan="3">&nbsp;</td>
							<td colspan="3">
								<table class="table table-condensed total-result">
									<tr>
										<td>Tổng đơn hàng</td>
										<td><%=cart.totalCart()%></td>
									</tr>

									<tr class="shipping-cost">
										<td>Phí vận chuyển</td>
										<td>Miễn phí</td>
									</tr>
									<tr>
										<td>Thành tiền</td>
										<td><span><%=cart.totalCart()%></span></td>
									</tr>



								</table>
							</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><a href="checkout.jsp">
									<button type="button" class="btn btn-fefault cart">
										Thanh toán</button>
							</a>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</section>
	<!--/#cart_items-->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>