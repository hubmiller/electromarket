<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
      href="./resources/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 목록</title>
</head>

<body>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					
			%>
			
			<div class="col-md-4">
				<img src="/upload/<%= rs.getString("p_filename") %>" style="width:100%">
				<h3> <%= rs.getString("p_name") %></h3>
				<p> <%= rs.getString("p_description") %></p>
				<p> <%= rs.getInt("p_unitPrice") %></p>
				<p><a href="./product.jsp?id=<%= rs.getString("p_id")%>" class="btn btn-secondary">상세정보&raquo;</a></p>
			</div>
			
			<%
				}
				
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
	</div>
	
	<hr>
	<%@ include file="footer.jsp" %>
</body>
</html>