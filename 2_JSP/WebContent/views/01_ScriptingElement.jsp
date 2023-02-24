<%@ page language = "java" contentType="text/html; charset=UTF-8"
    pageEncoding = "UTF-8"
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스크립팅 원소</title>
</head>
<body>

	<!-- HTML주석 : 개밸자도구 탭에 노출됨. -->
	<%-- JSP 주석 : 개발자도구 탭에 노출 안됨. --%>
	
	<h1>스크립팅 원소</h1>
	
	<%
		// 스크립틀릿 : 이 안에 일반적인 자바코드를 작성(변수 선언, 초기화, 제어문)
		
		int sum = 0;
		for(int i = 1; i <= 100; i++){
			sum += i;
		}
		System.out.println("덧셈끝. 결과는 : " + sum);
	%>
    
    <p>
    	화면으로 출력하고자 한다면<br>
    	스크립트릿을 이용해서 출력 가능 : <% out.println(sum); %><br>
    	표현식으로 출력가능 : <%= sum %>
    </p>
    
    <%
    	// 배열 사용
    	String[] foods = {"마라탕","마라샹궈","김밥","파스타"};
    %>
    
    <h5>배열의 길이 : <%= foods.length %></h5>
    
    <%= String.join(" " , foods) %>
    
    <h4>반복문을 통해 html요소를 반복적으로 화면에 출력하기</h4>
    
    <ul>
    <% for(int i = 0; i < foods.length; i++) { %>
    	<li><%=foods[i] %> 맛있다.</li>
    <% } %>
    </ul>
    
</body>
</html>