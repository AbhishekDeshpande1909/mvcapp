<%@page import="com.service.UserServiceImple"%>
<%@page import="com.service.UserService"%>
<jsp:useBean id="usr" class="com.dto.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="usr" />

<%
	UserService userServ = new UserServiceImple();
	boolean rec = userServ.login(usr);
	if(rec){
		RequestDispatcher req = request.getRequestDispatcher("home.jsp");
		req.forward(request, response);
	}else{
		response.sendRedirect("login.jsp?error_msg=please check the credentials!!");
	}
%>