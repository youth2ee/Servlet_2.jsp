<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	int num = 10;
	public void test(){}
%>

<% //자바코드작성
	 Random r = new Random();
	 int num = r.nextInt();
	 test();
	 
	 //이 안에 메서드 선언하면 안된다. 
	 //이 안 자체가 메서드이므로, 선언을 위해서는 <%! %안에 선언해야 한다.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Test1 page</h1>
<h3> <%= r.nextInt() %> </h3>
<%-- <img alt="" src="./img/<%= num%>.jpg"> --%>
<!-- html만 주석처리한다. -->
<%-- 자바문까지 주석처리한다. --%> 

</body>
</html>