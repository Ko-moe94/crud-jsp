<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
</head>
<body>
	<a href="view_all_user.jsp">View All Records</a><br>
	<h1>User Form</h1>
	<form action="adduser.jsp">
		<table >
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" >
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
		<input type="submit" value="Add User" >
	</form>
	
</body>
</html>