<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	h1{
		color:pink;
	}
</style>
<title>Include 지시어</title>
</head>
<body>
	<h1>include 지시어</h1>
	
	<h2>01_ScriptingElement.jsp파일 include</h2>
	<%@ include file="01_ScriptingElement.jsp" %>
	
	위 인클루드 한 jsp상에 존재하는 변수를 가져다 쓸수 있다<br>
	1~100까지 더한 총 합계는 <%= sum %>입니다.
	<%
		System.out.println(sum);
	%>
	
	<h2>오늘날짜</h2>
	<%@ include file="datePrint.jsp" %>
	
	
</body>
</html>