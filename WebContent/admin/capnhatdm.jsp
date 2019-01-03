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
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        %>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="box box-info">
		<div class="box-header with-border">
			<p></p>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<form class="form-horizontal" action="/thueXe/ManagerCategoryServlet"
			method="post">

			<div class="box-body">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">Cập
						nhật danh mục xe</label>

					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="Cập nhật danh mục xe" name="tenDanhMuc">
					</div>
				</div>

				<div class="form-group"></div>
			</div>
			<!-- /.box-body -->
			<div class="box-footer">
				<input type="hidden" name="command" value="update"> <input
					type="hidden" name="category_id"
					value="<%=request.getParameter("category_id")%>">

				<button type="submit" class="btn btn-info pull-right">Cập
					nhật</button>
			</div>
			<!-- /.box-footer -->
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>