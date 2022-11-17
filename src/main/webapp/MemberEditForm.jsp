<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員編輯頁面</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<header class="p-3 bg-dark text-white">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li class="text-white"><h3>修改會員資料</h3></li>
				</ul>
			</div>
		</div>
	</header>
	<br>
	<div class="container" style="margin-left: 32%">
		<div class="card" style="width: 500px">
			<div class="card-body">
				<form method="post" action="update.do">
					<input type="hidden" name="memberid" value="${member.memberid}">
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入姓名" name="membername" required
								value="${member.membername}"> <label for="floatingInput"><i
								class="fa-sharp fa-solid fa-user"></i> 姓名：</label>
						</div>
					</fieldset>

					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入電子信箱" name="memberemail" required
								value="${member.memberemail}" readonly> <label
								for="floatingInput"><i
								class="fa-sharp fa-solid fa-envelope"></i> 電子信箱：(註冊信箱為登入帳號)</label>
						</div>
					</fieldset>
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入密碼" name="memberpassword" required
								value="${member.memberpassword}"> <label
								for="floatingInput"><i class="fa-sharp fa-solid fa-lock"></i>
								密碼：</label>
						</div>
					</fieldset>
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入手機" name="membermobile" required
								value="${member.membermobile}"> <label
								for="floatingInput"><i
								class="fa-sharp fa-solid fa-mobile"></i> 手機：</label>
						</div>
					</fieldset>
					<hr>
					<button type="submit" class="btn btn-success" id="checkbtn">確認修改</button>
				</form>
			</div>
		</div>
	</div>
	<footer
		class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/"
				class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
						<use xlink:href="#bootstrap" /></svg>
			</a> <span class="text-muted">&copy; 2022 EEIT154, Arthur Wang
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