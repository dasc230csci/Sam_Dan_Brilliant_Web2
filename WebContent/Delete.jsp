<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>
<%@include file="verifyLogin.jsp"%>
<%
UserController uc = (UserController)session.getAttribute("uc");
String username = request.getParameter("Username");
User deleteUser = uc.getSpecificUser(username);
uc.deleteUser(deleteUser);
out.println("delete user : " + username);
response.sendRedirect("Menu.jsp");
%>