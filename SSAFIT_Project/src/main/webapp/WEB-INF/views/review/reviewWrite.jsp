<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 메인화면 -> 동영상 재생 화면 -> 리뷰 목록 -> 리뷰 작성 & 관리 -->
<title>리뷰 등록</title>
</head>
<body>
	<h1>reviewWrite.jsp</h1>
	<!-- 근데 리뷰작성 & 수정을 모달태그를 써서 했었는데 그건 어떻게 해야 하지 이거랑 html파일이랑 별개인가?? -->
	<form action="review" method="post">	<!-- 서블릿에 작성된 내용 전송 -->
	
	<input type="hidden" name="action" value="write">
		<div>
			글 제목 : <input type="text" name="title">
		</div>
		<div><!-- PJT-2에는 작성자를 쓰는 태그를 만들지 않았음 혹시모르니까 넣어놨음 필요없으면 나중에 없애자 -->
			작성자 : <input type="text" name="writer" placeholder="글쓴이">
		</div>		
		<div>
			내용 : <textarea rows="10" cols="30" name="content"></textarea>
		</div>		
		<div>
			<input type="submit" value="리뷰 등록">
		</div>
	
	</form>
	
	
</body>
</html>