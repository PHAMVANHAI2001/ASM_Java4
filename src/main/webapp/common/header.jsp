<header class="p-3 text-white border-bottom border-primary row"
	style="background-color: #202020;">
	<div class="container">
		<div
			class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
			<a href="<c:url value='/index'/>"
				class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
				Online Entertainment </a>
			<ul
				class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
				<li><a href="<c:url value='/index'/>"
					class="nav-link px-2 text-secondary">Home</a></li>
				<li><a href="#" class="nav-link px-2 text-white">Contact</a></li>
				<li><a href="#" class="nav-link px-2 text-white">About</a></li>
			</ul>
			<!-- 	<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
				<input type="search" class="form-control form-control-dark"
					placeholder="Search..." aria-label="Search">
			</form> -->
			<c:choose>
				<c:when test="${not empty sessionScope.currentUser}">
					<div class="dropdown">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
							aria-expanded="false"> ${sessionScope.currentUser.username} </a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a class="dropdown-item" href="favorites">My
									Favourites</a></li>
							<li><a class="dropdown-item" href="history">History</a></li>
							<li><a class="dropdown-item" href="changepass">Change
									Password</a></li>
							<li><a class="dropdown-item" href="logout">Log out</a></li>
							<c:if test="${sessionScope.currentUser.isAdmin == true}">
							<hr />
								<li><a class="dropdown-item" href="admin">Manager Page</a></li>
							</c:if>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="text-end">
						<a href="login" type="button" class="btn btn-outline-light me-2">Login</a>
						<a href="register" type="button" class="btn btn-warning">Sign-up</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</header>