<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>

    <!-- Main Content -->
    <main>
        <h2>로그인</h2>
        <form action="user" method="POST">
        	<fieldset>
        	<legend>로그인 정보 입력</legend>
        	<input type="hidden" name ="action" value = "login">
            <input type="text" name="id" placeholder="이메일 주소 또는 아이디" required>
            <input type="password" name="password" placeholder="비밀번호" required>
                <button type="submit">로그인</button>
                <div>
                    <a href="#">아이디 찾기</a> | 
                    <a href="#">비밀번호 재설정</a> | 
                    <a href="user?action=signupForm">회원가입</a>
                </div>
            </fieldset>
            </form>
    </main>

</body>
</html>
