<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Locale" %>

<html>
<head>
<title>Welcome</title>
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>

<body>
	<%@ include file="menu.jsp" %>
	
	<%! 
		String greeting = "전자기기 쇼핑몰에 <br> 오신 것을 환영합니다.";
		String tagline = "Welcome to Electro Market";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3" style="text-align:center"><%= greeting %></h1>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h2><%= tagline %></h2>
			<% 
				response.setIntHeader("Refresh", 5);
				Date today = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss a", Locale.ENGLISH);
				String CT = sdf.format(today);
				out.println("현재 접속 시각: " + CT + "\n");
			%>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>
