<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
      href="../resources/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			
			<c:set var="error" value="${param.error}"/>
			<c:if test="${error != null}">
				<div class="alert alert-danger">아이디와 비밀번호를 확인해 주세요.</div>
			</c:if>
			
			<form action="processLoginMember.jsp" class="form-signin" method="post">
				<div class="form-group">
					<label for="inputUserName">User Name</label>
					<input type="text" class="form-control" placeholder="ID" name="id"
					       id="inputUserName" required autofocus>
				</div>
				
				<div class="form-group">
					<label for="inputPassword">Password</label>
					<input type="password" class="form-control" placeholder="Password" name="password"
					       id="inputPassword">
				</div>
				
				<button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>