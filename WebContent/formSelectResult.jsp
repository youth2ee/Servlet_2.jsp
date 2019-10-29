<%@page import="java.sql.ResultSet"%>
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
	
	String sql = "select * from point where num=?";
	PreparedStatement st = con.prepareStatement(sql);
	st.setInt(1, num);
	
	ResultSet rs = st.executeQuery();
	
	String name="";
	int kor=0;
	int eng=0;
	int math=0;
	int total=0;
	double avg=0.0;
	
	if(rs.next()){
		num = rs.getInt("num");
		name = rs.getString("name");
		kor = rs.getInt("kor");
		eng = rs.getInt("eng");
		math = rs.getInt("math");
		total = rs.getInt("total");
		avg = rs.getDouble("avg");
		
		System.out.println("=====");
		System.out.println(num);
		System.out.println(name);
		System.out.println(kor);
		System.out.println(eng);
		System.out.println(math);
		System.out.println(total);
		System.out.println(avg);
	}
	
	rs.close();
	st.close();
	con.close();	
%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form select result page</title>
</head>
<body>

<h1> form select result page </h1>
<%= "num : " + num %> <br>
<%= "name : " + name %> <br>
<%= "kor : " + kor %> <br>
<%= "eng : " + eng %> <br>
<%= "math : " + math %> <br>
<%= "total : " + total %> <br>
<%= "avg : " + avg %> <br>

</body>
</html>