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
<title>My Favorites</title>
</head>

<body>
	<%@ include file="/common/header.jsp"%>
	<main>
		<div class="row g-0">
		<%-- 	<aside class="col-sm-3">
				<%@ include file="/common/aside.jsp"%>
			</aside> --%>
			<article class="row">
				<div class="row row-cols-md-3 g-3 row-cols-1">
					<c:forEach items="${videos}" var="video">
						<div class="col tm-catalog-item">
							<div class="position-relative tm-thumbnail-container">
								<img src="${video.poster}" alt="Image" style="height:300px; width:100%;"
									class="img-fluid tm-catalog-item-img"> 
									<a href="<c:url value='/video?action=watch&id=${video.href}'/>" class="position-absolute tm-img-overlay">
									<i class="fad fa-play tm-overlay-icon"></i>
								</a>
							</div>
							<div
								class="p-4 bg-secondary tm-catalog-item-description bg-opacity-25">
								<h5 class="text-white mb-3 tm-catalog-item-title">${video.title}</h5>
								<p style="color: #AAAAAA; font-size: 16px;" class="m-0">
									<span class="views">${video.views} lượt xem</span> <span
										class="time"></span>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</article>
		</div>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>

</html>