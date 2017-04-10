<html>
<head>
<title>Login Form</title>
<%
String error = request.getParameter("Error");
if(error != null && error.equals("1")){
	out.println("Username is invalid");
}
else if(error != null && error.equals("2")){
	out.println("Password is invalid");
}
else if(error != null && error.equals("3")){
	out.println("Error with accessing database");
}
else if(error != null && error.equals("-4")){
	out.println("Must be logged in to access.");
}
%>
</head>
<body>
<br>
Login form:<br>
<br>
<form method="post" action="Login_action.jsp" name="Login"><br>
<table style="text-align: left; width: 266px; height: 228px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password"> </td>
</tr>

<td style="vertical-align: top;"><input value="Log in"
name="Log in" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>