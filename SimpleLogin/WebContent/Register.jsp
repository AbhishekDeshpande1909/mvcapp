<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="reg_from.jsp" method="post">
	
		Fullname:
		<input type="text" name="fullName" style="margin-left: 45px">
		<br>
		<br>
		Username:
		<input type="text" name="userName"style="margin-left: 42px">
		<br>
		<br>
		Password:
		<input type="password" name="userPass" style="margin-left: 45px">
		<br>
		<br>
		<input type="submit" value="Register" style="margin-left: 95px">
	</form>
	<a href="login.jsp">Login here</a>

</body>
</html>