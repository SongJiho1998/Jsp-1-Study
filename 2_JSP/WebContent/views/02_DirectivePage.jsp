<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList , java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어</title>
</head>
<body>
	
	<h1>page 지시어</h1>
	
	<%
		/*
			ArrayList 사용
			지시어 부분에 import = "java.util.ArrayList" 속성을 추가했기 때문에 사용 가능.
		*/
		ArrayList<String> list = new ArrayList<>();
		list.add("Servlet");
		list.add("JSP");
		
		Date today = new Date();
	%>
	
	<p>
		리스트의 길이 : <%= list.size() %><br>
		0번 인덱스의 값 : <%= list.get(0) %><br>
		1번 인덱스의 값 : <%= list.get(1) %><br>
		현재 날짜 및 시간 : <%= today %><br>
	</p>
	
</body>
</html>