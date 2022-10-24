<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		session.invalidate(); //세션값 제거
	%>
	<script>
		location.href='index'; /* 메인 페이지로 이동 */
	</script>
</body>
</html>