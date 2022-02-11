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
		<div class="container-login" style="background-image:url(<c:url value="/images/bg-login.jpg"> </c:url>);">
			<div class="login-form p-5">
				<form action="login" method="POST">
					<fieldset>
						<legend class="text-center fw-bolder h1 text-white">Login
							Form</legend>
						<div class="form-group mb-3">
							<label for="username" class="form-label">User Name</label> <input
								type="text" class="form-control" id="username" name="username"
								placeholder="Nhập tài khoản" required> <span class="form-message"></span>
						</div>
						<div class="form-group mb-3">
							<label for="password" class="form-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Nhập mật khẩu" required> <span
								class="form-message"></span>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="remember"
								name="remember"> <label class="form-check-label"
								for="remember">Remember me?</label>
						</div>
						<button type="submit" class="btn btn-danger w-100">Login</button>
						<div class="mb-3 mt-3 fogot-password">
							<a href="forgotpass">Quên mật khẩu?</a>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>

</html>