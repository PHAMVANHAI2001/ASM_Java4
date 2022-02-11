<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Cards</title>

<!-- Custom fonts for this template-->
<%@ include file="/common/ad-head.jsp"%>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/common/admin-sidebar.jsp"%>
		<%-- <ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center"
		href="<c:url value='admin'/>">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">
			SB Admin <sup>2</sup>
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active"><a class="nav-link" href="<c:url value='admin'/>">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>Home</span>
	</a></li>

	<!-- Divider -->
	<hr class="sidebar-divider">
	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> <span>Quản
				lý người dùng</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item"
					href="<c:url value='admin/user?action=view'/>">Danh Sách</a> <a
					class="collapse-item" href="<c:url value='admin/user?action=add'/>">Chỉnh
					Sửa</a>
			</div>
		</div></li>

	<!-- Nav Item - Utilities Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="<c:url value='admin/video?action=view'/>"
		data-toggle="collapse" data-target="#collapseUtilities"
		aria-expanded="true" aria-controls="collapseUtilities"> <i
			class="fas fa-fw fa-wrench"></i> <span>Quản lý video</span>
	</a>
		<div id="collapseUtilities" class="collapse"
			aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item"
					href="<c:url value='admin/video?action=view'/>">Danh Sách</a> <a
					class="collapse-item"
					href="<c:url value='admin/video?action=add'/>">Chỉnh Sửa</a>
			</div>
		</div></li>
</ul> --%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="/common/admin-header.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Thêm/Xóa/Sửa - Video</h1>
					</div>

					<div class="row card-body">
						<form action="add" method="POST">
							<div class="form-group">
								<label for="href">Href</label> <input type="text"
									class="form-control" placeholder="Nhập href video" name="href"
									id="href">
							</div>
							<!-- form-group end.// -->
							<div class="form-group">
								<label for="title">Title</label> <input type="text"
									class="form-control" placeholder="Nhập title video"
									name="title" id="title">
							</div>
							<!-- form-group end.// -->
							<div class="form-group">
								<label for="poster">Poster</label> <input type="text"
									class="form-control"
									placeholder="Nhập đường dẫn hình ảnh video" name="poster"
									id="poster">
							</div>
							<!-- form-group end.// -->
							<div class="form-group">
								<label for="description">Description</label>
								<textarea class="form-control" aria-label="With textarea"
									name="description" id="description"></textarea>
							</div>
							<!-- form-group end.// -->
							<!-- 				<div class="form-group">
								<input type="checkbox" class="btn-check" id="btncheck1"
									autocomplete="off"> <label
									class="btn btn-outline-primary" for="btncheck1">Thêm</label> <input
									type="checkbox" class="btn-check" id="btncheck2"
									autocomplete="off"> <label
									class="btn btn-outline-primary" for="btncheck2">Xóa</label> <input
									type="checkbox" class="btn-check" id="btncheck3"
									autocomplete="off"> <label
									class="btn btn-outline-primary" for="btncheck3">Sửa</label> <input
									type="reset" class="btn-check" id="btncheck4"
									autocomplete="off"> <label
									class="btn btn-outline-primary" for="btncheck4">Làm Mới</label>
							</div> -->
							<div class="btn-group" role="group"
								aria-label="Basic outlined example">
								<button type="submit" class="btn btn-outline-primary"
									formaction="<c:url value='admin/video?action=create'/>">Thêm</button>
								<button type="reset" class="btn btn-outline-primary"
									formaction="Reset">Làm mới</button>
							</div>
							<!-- form-group// -->
						</form>
					</div>

					<!-- Content Row -->
					<div class="row">
						<table id="example" class="display" style="width: 100%">
							<thead>
								<tr>
									<th>ID</th>
									<th>Href</th>
									<th>Title</th>
									<th>Poster</th>
									<th>Views</th>
									<th>Description</th>
									<th>isActive</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>haipvps14680</td>
									<td>123</td>
									<td>haipvps14680@fpt.edu.vn</td>
									<td>Phạm Văn Hải</td>
									<td>1</td>
									<td>1</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th>ID</th>
									<th>Href</th>
									<th>Title</th>
									<th>Poster</th>
									<th>Views</th>
									<th>Description</th>
									<th>isActive</th>
								</tr>
							</tfoot>
						</table>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2021</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="js/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script
		src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#example').dataTable();
		});
	</script>

</body>

</html>