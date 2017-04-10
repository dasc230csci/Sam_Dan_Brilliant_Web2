<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
UserController uc = (UserController)session.getAttribute("uc");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String username = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
User editUser = new User(firstName, lastName, username, password, type.charAt(0), status.charAt(0));
uc.editUser(editUser);
response.sendRedirect("Menu.jsp");
%>