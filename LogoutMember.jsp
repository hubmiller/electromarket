<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet"
      href="../resources/css/bootstrap.min.css">
    
<%
	session.invalidate();
	response.sendRedirect("loginMember.jsp");
%>