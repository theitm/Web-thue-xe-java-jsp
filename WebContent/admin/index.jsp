<%@page import="dao.UsersDAO"%>
<%@page import="model.Bill"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BillDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý hóa đơn</title>
</head>
<body>
	<%
		BillDAO billDAO = new BillDAO();
		ArrayList<Bill> listBill = billDAO.getListBill();
		UsersDAO usersDAO = new UsersDAO();
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="box">
		<div class="box-header">
			<h3 class="box-title">Hover Data Table</h3>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div id="example2_wrapper"
				class="dataTables_wrapper form-inline dt-bootstrap">
				<div class="row">
					<div class="col-sm-6"></div>
					<div class="col-sm-6"></div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<table id="example2"
							class="table table-bordered table-hover dataTable" role="grid"
							aria-describedby="example2_info">
							<thead>
								<tr role="row">
									<th rowspan="1" colspan="1">Test side of tbMa hoa</th>
									<th rowspan="1" colspan="1">Mã hóa đơn</th>
									<th rowspan="1" colspan="1">Khách hàng</th>
									<th rowspan="1" colspan="1">Tổng hóa đơn</th>
									<th rowspan="1" colspan="1">Thanh toán</th>
									<th rowspan="1" colspan="1">Địa chỉ giao xe</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Bill bill : listBill) {
								%>

								<tr role="row" class="odd">
									<td>
									<td><%=bill.getBillID()%></td>
									<td class="data"><%=usersDAO.getUser(bill.getUserID()).getUserEmail()%></td>
									<td class="data"><%=bill.getTotal()%></td>
									<td class="data"><%=bill.getPayment()%></td>
									<td class="data"><%=bill.getAddress()%></td>
								</tr>
								<%
									}
								%>

							</tbody>

						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5">
						<div class="dataTables_info" id="example2_info" role="status"
							aria-live="polite">Showing 1 to 10 of 57 entries</div>
					</div>
					<div class="col-sm-7">
						<div class="dataTables_paginate paging_simple_numbers"
							id="example2_paginate">
							<ul class="pagination">
								<li class="paginate_button previous disabled"
									id="example2_previous"><a href="#"
									aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li>
								<li class="paginate_button active"><a href="#"
									aria-controls="example2" data-dt-idx="1" tabindex="0">1</a></li>
								<li class="paginate_button "><a href="#"
									aria-controls="example2" data-dt-idx="2" tabindex="0">2</a></li>
								<li class="paginate_button "><a href="#"
									aria-controls="example2" data-dt-idx="3" tabindex="0">3</a></li>
								<li class="paginate_button "><a href="#"
									aria-controls="example2" data-dt-idx="4" tabindex="0">4</a></li>
								<li class="paginate_button "><a href="#"
									aria-controls="example2" data-dt-idx="5" tabindex="0">5</a></li>
								<li class="paginate_button "><a href="#"
									aria-controls="example2" data-dt-idx="6" tabindex="0">6</a></li>
								<li class="paginate_button next" id="example2_next"><a
									href="#" aria-controls="example2" data-dt-idx="7" tabindex="0">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.box-body -->
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>