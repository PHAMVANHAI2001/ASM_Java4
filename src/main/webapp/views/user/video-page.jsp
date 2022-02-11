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
<title>${video.title}</title>
</head>

<body>
	<%@ include file="/common/header.jsp"%>
	<main class="container pt-4">
		<div class="row">
			<article class="col-md-8">
				<div class="row main-video">
					<div class="video">
						<h3 class="title" style="color: red;">${video.title}</h3>
						<iframe src="https://www.youtube.com/embed/${video.href}"></iframe>
						<div class="btn-group justify-content-between row ms-5 my-3"
							style="width: 300px;">
							<c:if test="${not empty sessionScope.currentUser}">
								<button id="LikeOrUnLikebtn"
									onclick="LikeorUnlike('${video.href}')"
									class="btn btn-primary col-6">
									<i class="fas fa-heart"></i>
									<c:choose>
										<c:when test="${flagLikebtn == true}">Unlike</c:when>
										<c:otherwise>Like</c:otherwise>
									</c:choose>
								</button>
								<a href="#" class="btn btn-danger col-6">Chia sẻ</a>
							</c:if>
						</div>
						<div class="video-description">
							<p style="color: white;">${video.description}</p>
						</div>
						<input id="videoIdHd" type="hidden" value="${video.href}" />
					</div>
				</div>
			</article>
			<aside class="col-md-4 h-100">
				<div class="block most-view">
					<div class="caption">
						<h3>
							<I class="fa fa-line-chart"></I>Hot Video
						</h3>
					</div>
					<ul class="list-video list-group list-group-flush">
						<c:forEach items="${videositem}" var="item">
							<li class="video-item p-0 m-0 mt-3 row"><a
								href="<c:url value='/video?action=watch&id=${item.href}'/>">
									<div class="row d-flex">
										<div class="thumbnail col-md-auto pl-2 pr-0">
											<img src="${item.poster}" alt="Trò Chơi Con Mực"
												style="width: 150px; height: 100px;">
										</div>
										<div class="col-md-6 video-info">
											<span class="movie-name-vi">${item.title}</span>
											<!-- 	<p class="movie-original-name m-0">Squid Game (2021)</p> -->
											<p class="views m-0">
												<i class="fa fa-eye"></i> ${item.views} lượt xem
											</p>
										</div>
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</aside>
		</div>
	</main>
	<%@ include file="/common/footer.jsp"%>
</body>
<script>
	function LikeorUnlike() {
		var videoId = document.getElementById('videoIdHd').value;
		$.ajax({
			url : 'video?action=like&id=' + videoId
		}).then(function(data) {
			var text = $('#LikeOrUnLikebtn').text();
			if (text.indexOf('Like') != -1) {
				$('#LikeOrUnLikebtn').text('Unlike');
			} else {
				$('#LikeOrUnLikebtn').text('Like');
			}
		}).fail(function(error) {
			alert('Vui lòng thử lại');
		});
	}
	// $('#LikeOrUnLikebtn').click(function() {
	// 	var videoId = document.getElementById('videoIdHd').value;
	// 	$.ajax({
	// 		url: 'video?action=like&id=' + videoId
	// 	}).then(function(data){
	// 		var text = $('#LikeOrUnLikebtn').text();
	// 		if(text.indexOf('Like') != -1){
	// 			$('#LikeOrUnLikebtn').text('Unlike');
	// 		}else{
	// 			$('#LikeOrUnLikebtn').text('Like');
	// 		}
	// 	}).fail(function(error){
	// 		alert('Vui lòng thử lại');
	// 	});
	// });
</script>
</html>