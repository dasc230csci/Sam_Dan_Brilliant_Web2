<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
UserController uc = (UserController)session.getAttribute("uc");
boolean canCreate = true;
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
for(User u : uc.getAllUsers()){
	if(u.getUsername().equals(username)){
		response.sendRedirect("Add.jsp?Error=1");
		canCreate = false;
	}
}
if(canCreate){
	User newUser = new User(firstName, lastName, username, password, type.charAt(0), status.charAt(0));
	uc.addUser(newUser);
	response.sendRedirect("Menu.jsp");
}

%>