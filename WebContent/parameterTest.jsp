<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parameter test</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> </script>
</head>
<body>

<h1>parameter test page</h1>
<a href="./parameterResult1.jsp?name=young&age=28">GO1</a>
<button id="btn">click</button>


<form action="./parameterResult1.jsp" method="get">
	<input type="text" name="name">
	<input type="number" name="age">
	<input type="submit" value="CLICK">
</form>

<form id="frm" action="./parameterResult1.jsp" method="post">
	<input type="text" name="name" id="v1">
	<input type="number" name="age" id="v2">
	<input id="btn2" type="button" value="CLICK">
</form>

<script type="text/javascript">
	$("#btn").click(function() {
		location.href="./parameterResult1.jsp?name=youth&age=32";
	});
	
	$("#btn2").click(function() {
		var check = confirm("확인 또는 취소");
		if(check){
			location.href = "./parameterResult1.jsp?name="+$("#v1").val()+"&age="+$("#v2").val();  /* 이렇게 넘기면 파라미터가 안넘어 간다. 파라미터를 직접 입력해줘야 한다.*/
			/* $("#frm").submit(); */
		}else{
			alert("취소");
		}
	});
	
</script>





</body>
</html>