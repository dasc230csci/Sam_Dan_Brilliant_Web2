<%@page language="java" import="edu.csbsju.csci230.*"%>
<%
String username = request.getParameter("Username");
String password = request.getParameter("Password");
UserController uc = new UserController();
int login = uc.login(username, password);
if(login == 0){
	session.setAttribute("uc", uc);
	response.sendRedirect("Menu.jsp");
}
else if(login == -1){
	response.sendRedirect("index.jsp?Error=1");
}
else if(login == -2){
	response.sendRedirect("index.jsp?Error=2");
}
else if(login == -3){
	response.sendRedirect("index.jsp?Error=3");
}
%>