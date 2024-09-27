<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>리뷰 등록</title>
</head>
<body>
	<h3>리뷰 등록</h3>

	<form action="review" method="post">
	
	<input type="hidden" name="action" value="write">
		<div>
			글 제목 : <input type="text" name="title">
		</div>
		<div>
			작성자 : <input type="text" name="writer" placeholder="글쓴이">
		</div>		
		<div>
			내용 : <textarea rows="10" cols="40" name="content"></textarea>
		</div>		
		<div>
			<input type="submit" value="리뷰 등록">
		</div>
	
	</form>
	
	
</body>
</html>