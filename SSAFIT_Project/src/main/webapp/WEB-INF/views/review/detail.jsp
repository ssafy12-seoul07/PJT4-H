<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 상세</title>
</head>
<body>
	<h3>리뷰 상세</h3>
	<div>${review.title }</div>
	<div>${review.content }</div>
	
	<a href="review?action=updateform&id=${review.id}">수정</a>
	<a href="review?action=delete&id=${review.id}">삭제</a>
</body>
</html>