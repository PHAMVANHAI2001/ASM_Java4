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
				<fieldset>
					<legend class="text-center fw-bolder h1 text-white">Đổi
						Mật Khẩu</legend>
					<div class="form-group mb-3">
						<label for="currentPass" class="form-label">Mật Khẩu Cũ</label> <input
							type="password" class="form-control" id="currentPass"
							name="currentPass" placeholder="Nhập mật khẩu" required>
						<span class="form-message"></span>
					</div>
					<div class="form-group mb-3">
						<label for="newPass" class="form-label">Mật Khẩu Mới</label> <input
							type="password" class="form-control" id="newPass" name="newPass"
							placeholder="Nhập mật khẩu mới" required> <span
							class="form-message"></span>
					</div>
					<h5 id="messageChangePass" style="color: red;"></h5>
					<div class="btn-group w-100 d-flex">
						<a class="btn btn-primary w-50" href="index">Close</a>
						<button type="submit" class="btn btn-danger w-50"
							id="changePassbtn">Đổi Mật Khẩu</button>
					</div>
				</fieldset>
			</div>
		</div>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>
<script>
	$('#changePassbtn').click(function() {
		$('#messageChangePass').text('');
		var currentPass = $('#currentPass').val();
		var newPass = $('#newPass').val();
		var formData = {
			'currentPass' : currentPass,
			'newPass' : newPass
		};
		$.ajax({
			url : 'changepass',
			type : 'POST',
			data : formData
		}).then(function(data) {
			$('#messageChangePass').text('Đổi mật khẩu thành công');
			setTimeout(function() {
				window.location.href = 'http://localhost:8080/ASM-Java4/index';
			}, 5 * 1000);
		}).fail(function(error) {
			$('#messageChangePass').text('Vui lòng kiểm tra lại thông tin!');
		});
	});
</script>
</html>