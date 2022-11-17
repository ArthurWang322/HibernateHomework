<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首頁</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
select option[value=""] {
	display: none;
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
					<li class="text-white"><h3>註冊</h3></li>
				</ul>
			</div>
		</div>
	</header>
	<br>
	<input type="hidden" id="status" value="${status}">
	<div class="container" style="margin-left: 32%">
		<div class="card" style="width: 500px">
			<div class="card-body">
				<form method="post" action="register.do">
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入姓名" name="membername" required> <label
								for="floatingInput"><i class="fa-sharp fa-solid fa-user"></i>
								姓名：</label>
						</div>
					</fieldset>

					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入電子信箱" name="memberemail" required> <label
								for="floatingInput"><i
								class="fa-sharp fa-solid fa-envelope"></i> 電子信箱：(註冊信箱為登入帳號)</label>
						</div>
					</fieldset>
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="floatingInput"
								placeholder="請輸入密碼" name="memberpassword" required> <label
								for="floatingInput"><i class="fa-sharp fa-solid fa-lock"></i>
								密碼：</label>
						</div>
					</fieldset>
					<fieldset class="form-group">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="請輸入手機" name="membermobile" required> <label
								for="floatingInput"><i
								class="fa-sharp fa-solid fa-mobile"></i> 手機：</label>
						</div>
					</fieldset>

					<fieldset class="form-group">
						<div style="margin-top: 16px; margin-left: 2px">
							<label> <input type="checkbox" name="check" required>
								我已閱讀且同意<a href="#">會員條款</a>
							</label>
						</div>
					</fieldset>
					<hr>
					<button type="submit" class="btn btn-success">確認送出</button>
					<button type="reset" class="btn btn-secondary"
						style="margin-right: 170px">重新輸入</button>
					<a href="${pageContext.request.contextPath}/Login.jsp"> <label class="btn btn-outline-info">我已註冊過</label></a>
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
	<script>
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal("註冊成功", "歡迎您加入我們", "success")
		}
		if (status == "failed") {
			swal("註冊失敗", "該電子信箱已註冊過", "error")
		}
	</script>
</body>
</html>