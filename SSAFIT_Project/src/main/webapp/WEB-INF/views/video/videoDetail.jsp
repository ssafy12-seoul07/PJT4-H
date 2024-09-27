<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동 영상 상세보기</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">
</head>
<body>
    <h1>운동 영상 상세 정보</h1>

    <!-- 영상 상세 정보 출력 -->
    <div>
        <h2>${video.title}</h2>
        <p><strong>설명:</strong> ${video.description}</p>
        <p><strong>조회수:</strong> ${video.views}</p>
        <p><strong>카테고리:</strong> ${video.category}</p>
    </div>

    <!-- 수정 및 삭제 버튼 -->
    <div>
        <a href="${pageContext.request.contextPath}/edit_video.jsp?id=${video.videoId}">수정</a>
        <form action="${pageContext.request.contextPath}/main?action=delete&id=${video.videoId}" method="post" style="display:inline;">
            <button type="submit">삭제</button>
        </form>
    </div>

    <!-- 목록 페이지로 돌아가기 -->
    <p><a href="${pageContext.request.contextPath}/main">목록으로 돌아가기</a></p>
    
</body>
</html>
