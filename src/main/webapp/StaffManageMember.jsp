<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>後台管理系統</title>
<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@latest"></script>
<style>
body {
	min-height: 100vh;
	min-height: -webkit-fill-available;
}

html {
	height: -webkit-fill-available;
}

main {
	display: flex;
	flex-wrap: nowrap;
	height: 100vh;
	height: -webkit-fill-available;
	overflow-x: auto;
	overflow-y: hidden;
}

.b-example-divider {
	flex-shrink: 0;
	width: 10px;
	height: 120vh;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
	background-color: rgba(0, 0, 0, .1);
}

.bi {
	vertical-align: -.125em;
	pointer-events: none;
	fill: currentColor;
}

.dropdown-toggle {
	outline: 0;
}

.nav-flush .nav-link {
	border-radius: 0;
}

.btn-toggle {
	display: inline-flex;
	align-items: center;
	padding: .25rem .5rem;
	font-weight: 600;
	color: rgba(0, 0, 0, .65);
	background-color: transparent;
	border: 0;
}

.btn-toggle:hover, .btn-toggle:focus {
	color: rgba(0, 0, 0, .85);
	background-color: #FFF0AC;
}

.btn-toggle::before {
	width: 1.25em;
	line-height: 0;
	content:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%280,0,0,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
	transition: transform .35s ease;
	transform-origin: .5em 50%;
}

.btn-toggle[aria-expanded="true"] {
	color: rgba(0, 0, 0, .85);
}

.btn-toggle[aria-expanded="true"]::before {
	transform: rotate(90deg);
}

.btn-toggle-nav a {
	display: inline-flex;
	padding: .1875rem .5rem;
	margin-top: .125rem;
	margin-left: 1.25rem;
	text-decoration: none;
}

.btn-toggle-nav a:hover, .btn-toggle-nav a:focus {
	background-color: #FFF0AC;
}

.scrollarea {
	overflow-y: auto;
}

.fw-semibold {
	font-weight: 600;
}

.lh-tight {
	line-height: 1.25;
}
</style>

</head>
<body>
	<main>
		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<span class="fs-5 fw-semibold" style="margin-left: 60px">後台管理系統</span>
			<hr>
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="false">會員管理</button>
					<div class="collapse" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="showallmember.do" class="link-dark rounded">所有會員</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<div class="b-example-divider"></div>

		<div class="container-fluid"
			style="background-color: rgba(0, 0, 0, 0.1)">
			<div class="card shadow mb-4" style="margin-top: 26px;">
				<div class="mb-4 text-end">
					<label style="margin-right: 12px; margin-top: 6px">管理員：${sessionScope.membername}
					</label> <a href="logout.do" class="btn btn-warning btn-sm"
						style="margin-right: 12px; margin-top: 6px">登出</a>
				</div>
				<div class="card-header py-3" style="background-color: black">
					<h3 class="m-0 font-weight-bold text-white">會員資料表</h3>
				</div>
				<div class="card-body py-3">
					<form method="post" action="#"
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light small"
								placeholder="會員姓名搜尋..." aria-label="Search"
								aria-describedby="basic-addon2" name="input">
							<div class="input-group-append">
								<button class="btn btn-dark" type="submit">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="60%">
							<thead>
								<tr align="center">
									<th>會員編號</th>
									<th>會員姓名</th>
									<th>E-mail</th>
									<th>密碼</th>
									<th>手機號碼</th>
									<th>權限</th>
									<th>功能</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="member" items="${listmember}">
									<c:if test="${member.memberlevel=='管理人員'}">
										<tr>
											<td align="center" valign="middle">${member.memberid}</td>
											<td align="center" valign="middle">${member.membername}</td>
											<td align="center" valign="middle">${member.memberemail}</td>
											<td align="center" valign="middle">${member.memberpassword}</td>
											<td align="center" valign="middle">${member.membermobile}</td>
											<td align="center" valign="middle">${member.memberlevel}</td>
											<td align="center" valign="middle"></td>
										</tr>
									</c:if>
									<c:if test="${member.memberlevel=='一般會員'}">
										<tr>
											<td align="center" valign="middle">${member.memberid}</td>
											<td align="center" valign="middle">${member.membername}</td>
											<td align="center" valign="middle">${member.memberemail}</td>
											<td align="center" valign="middle">${member.memberpassword}</td>
											<td align="center" valign="middle">${member.membermobile}</td>
											<td align="center" valign="middle">${member.memberlevel}</td>
											<td align="center" valign="middle"><a
												href="changememberlevel.do?memberid=${member.memberid}&memberlevel=${member.memberlevel}"
												class="btn btn-warning btn-sm">停用</a> <a href="#"
												data-url="deletemember.do?memberid=${member.memberid}"
												class="btn btn-danger btn-sm" id="delete">刪除</a></td>
										</tr>
									</c:if>
									<c:if test="${member.memberlevel=='停用'}">
										<tr>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.memberid}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.membername}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.memberemail}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.memberpassword}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.membermobile}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray">${member.memberlevel}</td>
											<td align="center" valign="middle"
												style="background-color: lightgray"><a
												href="changememberlevel.do?memberid=${member.memberid}&memberlevel=${member.memberlevel}"
												class="btn btn-success btn-sm">啟用</a> <a href="#"
												data-url="deletemember.do?memberid=${member.memberid}"
												class="btn btn-danger btn-sm" id="delete">刪除</a></td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script>
		$(".btn-danger").click(function() {
			let url = $(this).data('url');
			swal.fire({
				title : "確認刪除?",
				text: "刪除後會員資料將永久消失",
				icon : "warning",
				showCancelButton : true,
				confirmButtonText : "確認",
				confirmButtonColor:	"#FF5151",
				cancelButtonText : "取消"
				}).then((result)=>{
					if(result.value){
						window.location.href=url;
					}
				})
			});
	</script>
</body>
</html>