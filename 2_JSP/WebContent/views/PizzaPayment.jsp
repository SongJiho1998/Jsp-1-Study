<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String piza = (String) request.getAttribute("piza");
	String[] topping = (String[]) request.getAttribute("topping");
	String[] side = (String[]) request.getAttribute("side");
	int price = (int) request.getAttribute("price");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자주문내역페이지</title>

</head>
<body>

    <strong><h1>주문내역</h1></strong><br>
    <strong>
    	피자는 <span style = "color:red;"><%=piza %></span>, 토핑은 <span style="color:green;"><%= topping == null ? "없음" : String.join(", " , topping) %></span>
    	, 사이드는 <span style="color:blue;"><%= side == null ? "없음" :String.join(", " , side) %></span> 주문하셨습니다.
    </strong>
    
    <br>
    <br>
    <br>
    
    총합 : <%= price %>원
    
    <br>
    <br>
    <h1 style="color:pink;">즐거운 식사시간 되세요~</h1>

</body>
</html>