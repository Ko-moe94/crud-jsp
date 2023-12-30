<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.UserDao"%> 
<%@ page import="bean.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
	<%
		String id= request.getParameter("id");
		User u= UserDao.getById(Integer.parseInt(id));
	%>
	
	<form action="edituser.jsp">
	<input type="hidden" name="id" value="<%=u.getId() %>"/> 
		<table >
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%= u.getName()%>"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%= u.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%= u.getEmail() %>"/>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" value="Male" name="sex" >Male<input type="radio" value="Female" name="sex">Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country" style="width: 176px;">
						<option>India</option>  
						<option>Pakistan</option>  
						<option>Afghanistan</option>  
						<option>Myanmar</option>  
						<option>Other</option>  
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="Edit User" >
	</form>
</body>
</html>