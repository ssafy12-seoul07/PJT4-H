<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Video List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
    <h1>최근 가장 많이 본 영상</h1>
    <table border="1">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Body Part</th>
            <th>Views</th>
        </tr>
        <c:forEach var="video" items="${topVideos}">
            <tr>
                <td>${video.title}</td>
                <td>${video.description}</td>
                <td>${video.bodyPart}</td>
                <td>${video.views}</td>
            </tr>
        </c:forEach>
    </table>

    <h1>운동 부위 선택</h1>
    <form action="${pageContext.request.contextPath}/main" method="get">
        <label for="bodyPart">Select Body Part:</label>
        <select name="bodyPart" id="bodyPart">
            <option value="full body">전신</option>
            <option value="core">복부</option>
            <option value="legs">하체</option>
            <option value="upper body">상체</option>
        </select>
        <button type="submit">선택</button>
    </form>

    <table border="1">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Body Part</th>
            <th>Views</th>
        </tr>
        <c:forEach var="video" items="${videosByBodyPart}">
            <tr>
                <td>${video.title}</td>
                <td>${video.description}</td>
                <td>${video.bodyPart}</td>
                <td>${video.views}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
