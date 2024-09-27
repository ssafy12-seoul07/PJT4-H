<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>

    <!-- Main Content -->
    <main>
        <h2>회원가입</h2>
        <form action="user" method="POST">
        	<fieldset>
        	<legend>회원 정보 입력</legend>
        	<input type="hidden" name ="action" value = "signRegist">
            아이디 : <input type="text" name="userid" placeholder="이메일 주소 또는 아이디" required><br>
            비밀번호 : <input type="password" name="password" placeholder="비밀번호" required><br>
            이름 : <input type="text" name="userName" placeholder="이름" required><br>
            닉네임 : <input type="text" name="nickName" placeholder="닉네임" required><br>
            <button type="submit">회원가입</button>
            </fieldset>
            </form>
    </main>

</body>
</html>