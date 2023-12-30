<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dao.UserDao"%>  
<jsp:useBean id="u" class="bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<%
		int i=UserDao.saveUser(u);
		if(i>0) {
			response.sendRedirect("adduser_success.jsp");
		}else {
			response.sendRedirect("adduser_error.jsp");
		}
	%>
</body>
</html>