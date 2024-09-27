<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<style>
    body {
        background-color: #f0f8ff;
        color: #333;
        margin: 0;
        padding: 0;
    }
    .signup-container {
        width: 400px;
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

    <!-- Main Content -->
    <div class="signup-container">
        <h2>회원가입</h2>
        <form action="user" method="POST">
        	<fieldset>
        	<legend>회원 정보 입력</legend>
        	<input type="hidden" name="action" value="signRegist">
            아이디 : <input type="text" name="userid" placeholder="이메일 주소 또는 아이디" required><br>
            비밀번호 : <input type="password" name="pw" placeholder="비밀번호" required><br>
            이름 : <input type="text" name="userName" placeholder="이름" required><br>
            닉네임 : <input type="text" name="nickName" placeholder="닉네임" required><br>
            <button type="submit">회원가입</button>
            </fieldset>
        </form>
    </div>
    
    <c:if test="${not empty joinError}">
    <script>
        alert("${joinError}");
    </script>
	</c:if>

</body>
</html>
