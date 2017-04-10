<%@page language="java" import="edu.csbsju.csci230.*"%>
<%
UserController verifyUC = (UserController)session.getAttribute("uc");
if(verifyUC == null || verifyUC.isLoggedIn() == false){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}
%>
