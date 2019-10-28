<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
	String name = request.getParameter("name");
 	String kor = request.getParameter("kor");
 	String eng = request.getParameter("eng");
 	String math = request.getParameter("math");
 	
 	int kor1 = Integer.parseInt(kor);
 	int eng1 = Integer.parseInt(eng);
 	int math1 = Integer.parseInt(math);
 	
 	int sum = kor1+eng1+math1;
 	double avg = sum/3;
 	
 	//데이터베이스 접속해서 db에 파일을 넣어주기..............
 	//1. 로그인정보
 	String user = "user14";
 	String password = "user14";
 	String url = "jdbc:oracle:thin:@211.238.142.32:1521:xe";
 	String driver = "oracle.jdbc.driver.OracleDriver";
 	
 	//2. driver를 메모리에 로딩
 	Class.forName(driver);
 	
 	//3. 로그인 후 connection 객체 반환
 	Connection con = DriverManager.getConnection(url, user, password);
 	
 	//4. sql문 생성
 	String sql = "insert into point values(point_seq.nextval,?,?,?,?,?,?)";
 	
 	//5. sql문 미리 전송
 	PreparedStatement st = con.prepareStatement(sql);
 	
 	//6. ?값 셋팅해주기
 	st.setString(1, name);
 	st.setInt(2, kor1);
 	st.setInt(3, eng1);
 	st.setInt(4, math1);
 	st.setInt(5, sum);
 	st.setDouble(6, avg);
 	
 	//7. 최종 전송 및 확인
 	int result = st.executeUpdate();
 	
 	//8. 연결 해제
 	st.close();
 	con.close();
 	
 %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM TEST RESULT</title>
</head>
<body>

<h1>Form Test Result Page</h1>
<h3> 이름 : <%= name %>  </h3>
<h3> 국어 : <%= kor1 %>  </h3>
<h3> 영어 : <%= eng1 %>  </h3>
<h3> 수학 : <%= math1 %>  </h3>
<h3> 총점 : <%= sum %>  </h3>
<h3> 평균 : <%= avg %>  </h3>

</body>
</html>