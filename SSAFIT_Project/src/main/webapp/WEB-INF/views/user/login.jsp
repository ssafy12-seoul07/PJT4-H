<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<style>
    body {
        background-color: #f0f8ff;
        color: #333;
        margin: 0;
        padding: 0;
    }
    .login-container {
        width: 400px;
        hight : 500px;
        margin: 100px auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #dfe6e9;
        border-radius: 8px;
    }
    h2 {
        text-align: center;
        color: #2980b9; /* 파란색 제목 */
    }
    fieldset {
        border: 1px solid #bdc3c7;
        border-radius: 8px;
        padding: 20px;
        margin: 10px 0;
        min-height: 100px; /* 최소 높이 설정 */
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #bdc3c7;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #2980b9; /* 파란색 버튼 */
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #1f618d; /* 어두운 파란색 버튼 hover */
    }
    .links {
        text-align: center;
        margin-top: 10px;
    }
    .links a {
        color: #2980b9;
        text-decoration: none;
    }
    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <main class="member">
        <div class="login-container">
            <h2>로그인</h2>
            <form action="user" method="POST">
                <fieldset>
                    <legend>로그인 정보 입력</legend>
                    <input type="hidden" name ="action" value="login">
                    <input type="text" name="id" placeholder="이메일 주소 또는 아이디" required>
                    <input type="password" name="password" placeholder="비밀번호" required>
                    <button type="submit">로그인</button>
                    <div class="links">
                        <a href="#">아이디 찾기</a> | 
                        <a href="#">비밀번호 재설정</a> | 
                        <a href="user?action=signupForm">회원가입</a>
                    </div>
                </fieldset>
            </form>
        </div>
    </main>
    
    <c:if test="${not empty loginError}">
        <script>
            alert("${loginError}");
        </script>
    </c:if>
    <c:if test="${not empty joinOK}">
        <script>
            alert("${joinOK}");
        </script>
    </c:if>
    
</body>
</html>
