<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>리뷰 수정</title>
</head>
<body>
	<h3>리뷰 수정</h3>
	<form action="review" method="post">	<!-- 서블릿에 작성된 내용 전송 -->
	
	<input type="hidden" name="action" value="update">
	<input type="hidden" name="id" value="${review.id }">
	
		<div>
			글 제목 : <input type="text" name="title" value="${review.title }">
		</div>
		<div>
			작성자 : <input type="text" name="writer" value="${review.writer }">
		</div>		
		<div>
			내용 : <textarea rows="10" cols="40" name="content">${review.content}</textarea>
		</div>		
		<div>
			<input type="submit" value="게시글 수정">
			<a href="${pageContext.request.contextPath}/review?action=list">게시글 목록으로 돌아가기</a>
			
		</div>
	
	</form>
	
	
</body>
</html>