<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="/common/head.jsp"%>
<title>Document</title>
</head>
<body>
	<%@ include file="/common/header.jsp"%>
	<main>
		<div class="container-login"
			style="background-image:url(<c:url value="/images/bg-login.jpg"> </c:url>);">
			<div class="login-form p-5">
				<form action="register" method="POST">
					<fieldset>
						<legend class="text-center fw-bolder h1 text-white">Register
							Form</legend>
						<div class="form-group mb-3">
							<label for="username" class="form-label">User Name</label> <input
								type="text" class="form-control" id="username" name="username"
								placeholder="Nhập tài khoản"> <span class="form-message" required></span>
						</div>
						<div class="form-group mb-3">
							<label for="fullname" class="form-label">Fullname</label> <input
								type="text" class="form-control" id="fullname" name="fullname"
								placeholder="Nhập họ và tên"> <span class="form-message" required></span>
						</div>
						<div class="form-group mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="Nhập Email" required> <span class="form-message" ></span>
						</div>
						<div class="form-group mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Nhập mật khẩu" required> <span
								class="form-message"></span>
						</div>
						<div class="form-group mb-3">
							<label for="cfpassword" class="form-label">Confirm Password</label> <input
								type="password" class="form-control" id="cfpassword"
								name="cfpassword" placeholder="Confirm Password" required> <span
								class="form-message"></span>
						</div>
						<button type="submit" class="btn btn-danger w-100">Đăng Ký</button>
					</fieldset>
				</form>
			</div>
		</div>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>

</html>