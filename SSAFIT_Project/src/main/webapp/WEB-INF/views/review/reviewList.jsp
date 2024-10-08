<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 목록</title>
</head>
<body>
	<h3>리뷰 목록</h3>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${list }" var="review">
			<tr>
				<td>${review.id}</td>															<!-- 번호 -->	
				<td><a href="review?action=detail&id=${review.id}">${review.title}</a></td>		<!-- 제목 -->	
				<td>${review.writer}</td>														<!-- 작성자 -->
				<td>${review.viewCnt}</td>														<!-- 조회수 -->
				<td>${review.regDate}</td>														<!-- 등록일 -->			
			</tr>
		</c:forEach>
		
		<a href="review?action=writeform">리뷰 등록</a>
	
	</table>
</body>
</html>