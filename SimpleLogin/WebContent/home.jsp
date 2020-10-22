
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">HOMEPAGE </h1>
   <% 
   String username = request.getParameter("userName"); %>
   <h3>Welcome   <% out.println(username); %> !!!!</h3>
   
   <a href="logout.jsp">LogOut</a>
    
</body>
</html>