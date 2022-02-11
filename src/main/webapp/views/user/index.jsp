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
<title>Online Entertainment</title>
</head>

<body>
	<%@ include file="/common/header.jsp"%>
	<main>
		<article class="col container py-3">
			<div class="row row-cols-md-4 g-4 row-cols-1">
				<c:forEach items="${videos}" var="video">
					<div class="col tm-catalog-item">
						<div class="position-relative tm-thumbnail-container">
							<img src="${video.poster}" alt="Image"
								style="height: 250px; width: 100%;"
								class="img-fluid tm-catalog-item-img"> <a
								href="<c:url value='/video?action=watch&id=${video.href}'/>"
								class="position-absolute tm-img-overlay"> <i
								class="fad fa-play tm-overlay-icon"></i>
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
			<nav>
				<ul class="pagination justify-content-center">
					<c:if test="${currentPage == 1}">
						<li class="page-item"><a class="page-link" href=""><i class="fas fa-backward"></i></a></li>
					</c:if>
					<c:if test="${currentPage > 1}">
						<li class="page-item"><a href="index?page=${currentPage - 1}"
							class="page-link"><i class="fas fa-backward"></i></a></li>
					</c:if>
					<c:forEach varStatus="i" begin="1" end="${maxPage}">
						<li class="page-item ${currentPage == i.index ? 'active' :' '}"><a
							class="page-link" href="index?page=${i.index}">${i.index}</a></li>
					</c:forEach>
					<c:if test="${currentPage == maxPage}">
						<li class="page-item"><a class="page-link" href=""><i class="fas fa-forward"></i></a></li>
					</c:if>
					<c:if test="${currentPage < maxPage}">
						<li class="page-item"><a href="index?page=${currentPage + 1}"
							class="page-link"><i class="fas fa-forward"></i></a></li>
					</c:if>
				</ul>
			</nav>
		</article>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>

</html>