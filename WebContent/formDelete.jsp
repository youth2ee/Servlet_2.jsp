<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<h1>Delete Form Page</h1>
<form action="./formDeleteResult.jsp" method="get" id="bts">
	<input type="text" name="num">
	<!-- name은 db의 테이블의 컬럼명과 맞춘다. -->
	<input type="button" value="Delete" id="btn">
	
	<script type="text/javascript">
		$("#btn").click(function() {
			if (confirm("Press a button!")) {
				bts.submit();
			} 
		});
	</script>
	
</form>

</body>
</html>