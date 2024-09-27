<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
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
        color: #2980b9; /* �Ķ��� ���� */
    }
    fieldset {
        border: 1px solid #bdc3c7;
        border-radius: 8px;
        padding: 20px;
        margin: 10px 0;
        min-height: 100px; /* �ּ� ���� ���� */
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
        background-color: #2980b9; /* �Ķ��� ��ư */
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #1f618d; /* ��ο� �Ķ��� ��ư hover */
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
        <h2>ȸ������</h2>
        <form action="user" method="POST">
        	<fieldset>
        	<legend>ȸ�� ���� �Է�</legend>
        	<input type="hidden" name="action" value="signRegist">
            ���̵� : <input type="text" name="userid" placeholder="�̸��� �ּ� �Ǵ� ���̵�" required><br>
            ��й�ȣ : <input type="password" name="pw" placeholder="��й�ȣ" required><br>
            �̸� : <input type="text" name="userName" placeholder="�̸�" required><br>
            �г��� : <input type="text" name="nickName" placeholder="�г���" required><br>
            <button type="submit">ȸ������</button>
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
