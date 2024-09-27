<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SSAFIT Main Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>SSAFIT</h1>

    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/main">메인 페이지</a></li>
            <li><a href="${pageContext.request.contextPath}/user?action=loginForm">로그인 페이지</a></li>
            <li><a href="${pageContext.request.contextPath}/review?action=list">리뷰 목록</a></li>
            <!-- 다른 기능이 추가될 경우 여기에 링크 추가 -->
        </ul>
    </nav>
</body>
</html>
