<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>

    <!-- Main Content -->
    <main>
        <h2>ȸ������</h2>
        <form action="user" method="POST">
        	<fieldset>
        	<legend>ȸ�� ���� �Է�</legend>
        	<input type="hidden" name ="action" value = "signRegist">
            ���̵� : <input type="text" name="userid" placeholder="�̸��� �ּ� �Ǵ� ���̵�" required><br>
            ��й�ȣ : <input type="password" name="password" placeholder="��й�ȣ" required><br>
            �̸� : <input type="text" name="userName" placeholder="�̸�" required><br>
            �г��� : <input type="text" name="nickName" placeholder="�г���" required><br>
            <button type="submit">ȸ������</button>
            </fieldset>
            </form>
    </main>

</body>
</html>