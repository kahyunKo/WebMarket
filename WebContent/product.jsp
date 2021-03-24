<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/4.0.0/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>

<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p> <b>상품 코드 : </b>
			</div>
		</div>
	
	
	</div>
	
</body>


</html>