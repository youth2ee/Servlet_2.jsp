<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String age1 = request.getParameter("age");
	int age =  Integer.parseInt(age1);
	System.out.println(name);
	System.out.println(age);
%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>parameter result1 page</h1>
<%= name %>
<%= age %>

</body>
</html>