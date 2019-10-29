<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
 	String user = "user14";
 	String password = "user14";
 	String url = "jdbc:oracle:thin:@211.238.142.32:1521:xe";
 	String driver = "oracle.jdbc.driver.OracleDriver";
	
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, user, password);
	String sql = "delete point where num=?";
	PreparedStatement st = con.prepareStatement(sql);
	st.setInt(1, num);
	
	int result = st.executeUpdate();
	
	st.close();
	con.close();	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form delete Result</title>

</head>
<body>

<h1>form delete result</h1>
<h3> 삭제할 번호 : <%= num %>  </h3>
<h3> 결과 : <%= result %>  </h3>

</body>
</html>