<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="/common/taglib.jsp" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<%@ include file="/common/head.jsp" %>
				<title>Forgot Password</title>
		</head>

		<body>
			<%@ include file="/common/header.jsp" %>
				<main>
					<div class="container-login" style="background-image:url(<c:url value=" /images/bg-login.jpg">
						</c:url>);">
						<div class="login-form p-5">
							<fieldset>
								<legend class="text-center fw-bolder h1 text-white">Forgot Password</legend>
								<div class="form-group mb-3">
									<label for="email" class="form-label" style="color:white;">Email</label> <input
										type="email" class="form-control" id="email" name="email"
										placeholder="Nhập email" required> <span class="form-message"></span>
								</div>
								<button type="submit" id="sendbtn" class="btn btn-danger w-100">Reset Password</button>
							</fieldset>
							<h5 style="color:red" id="messageReturn"></h5>
						</div>
					</div>
				</main>
				<%@ include file="/common/footer.jsp" %>
		</body>
		<script>
			$('#sendbtn').click(function() {
				$('#messageReturn').text('');
				var email = $('#email').val();
				var formData = { 'email':email};
				$.ajax({
					url: 'forgotpass',
					type: 'POST',
					data: formData
				}).then(function (data) {
					$('#messageReturn').text('Mật khẩu của bạn đã được reset, vui lòng kiểm tra email!');
					setTimeout(function () {
						window.location.href = 'http://localhost:8080/ASM-Java4/index';
					}, 5 * 1000);
				}).fail(function (error) {
					$('#messageReturn').text('Thông tin của bạn không đúng, vui lòng kiểm tra lại!');
				});
			});
		</script>

		</html>