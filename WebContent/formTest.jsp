<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM TEST</title>
</head>
<body>

<h1>Form Test Page</h1>
<form action="./formTestResult.jsp" method="get"> 
	이름 <input type="text" name="name">
	국어 <input type="text" name="kor">
	영어 <input type="text" name="eng">
	수학 <input type="text" name="math">
	
	<button>click</button>
</form>


</body>
</html>