<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
if (session.getAttribute("membername") == null) {
	response.sendRedirect("Login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商城首頁</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.js
	"></script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.list-item {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.simple-pagination ul {
	list-style: none;
	text-align: center;
	margin-top: 60px
}

.simple-pagination li {
	display: inline-block;
	margin: 6px;
}

.simple-pagination li a {
	font-size: 20px;
	border-radius: 4px;
	color: black;
	padding: 2px 16px 2px 16px;
	text-decoration: none;
	background-color: gary;
}

.simple-pagination .current {
	font-size: 20px;
	border-radius: 4px;
	color: white;
	padding: 2px 16px 2px 16px;
	text-decoration: none;
	background-color: rgba(0, 0, 0, .7);
}
</style>
</head>
<body>
	<header class="p-3 bg-dark text-white">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li style="margin-left: 20px"><a href="UserIndex.html"
						class="nav-link px-2  text-white">首頁</a></li>
					<li style="margin-left: 20px"><a href="#"
						class="nav-link px-2 text-white">新品上市</a></li>
					<li style="margin-left: 20px"><a href="#"
						class="nav-link px-2 text-white">本月熱銷</a></li>
					<li style="margin-left: 20px"><a href="#"
						class="nav-link px-2 text-white">常見問題</a></li>
					<li style="margin-left: 20px"><a href="#"
						class="nav-link px-2 text-white">聯絡我們</a></li>
				</ul>
				<div class="text-end">
					<label style="margin-right: 12px"><label
						style="margin-right: 2px"><a class="text-white"
							href="MemberEditServlet.do?memberid=${sessionScope.memberid}"><i
								class="fa-solid fa-user"></i></a></label> <label
						style="color: white; margin-right: 12px">您好，${sessionScope.membername}
					</label> <a href="logout.do" class="btn btn-outline-warning">登出</a>
				</div>
			</div>
		</div>
	</header>
	<br>
	<main>
		<div class="album py-3 bg-light" style="backgroung-color: #FFFCEC">
			<div class="container" style="backgroung-color: #FFFCEC">
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"
					style="backgroung-color: #FFFCEC"></div>
			</div>
		</div>
	</main>
	<div class="row">
		<div class="container">
			<div id="pagination-container"></div>
		</div>
	</div>

	<footer
		class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center"
			style="margin-left: 40px">
			<span class="text-muted">&copy; 2022 EEIT154, Arthur Wang
				Copyright</span>
		</div>
		<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
			<li class="ms-3 text-muted">FOLLOW US</li>
			<li class="ms-3"><img style="width: 20px"
				src="https://cdn-icons-png.flaticon.com/512/3670/3670127.png"></li>
			<li class="ms-3"><img style="width: 20px"
				src="https://cdn-icons-png.flaticon.com/512/1384/1384063.png"></li>
			<li class="ms-3" style="margin-right: 40px"><img
				style="width: 20px"
				src="https://cdn-icons-png.flaticon.com/512/174/174848.png"></li>
		</ul>
	</footer>
</body>
</html>