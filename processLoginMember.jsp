<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="dbconn.jsp" %>

<fmt:requestEncoding value="UTF-8" />
<sql:query var="resultSet" dataSource="${dataSource}">
	select * from member where id=? and password=?
	
	<sql:param value="${param.id}" />
	<sql:param value="${param.password}"/>
</sql:query>

<c:forEach var="row" items="${resultSet.rows}">
	<c:set var="sessionId" value="${param.id}" scope="session"></c:set>
	<c:redirect url="resultMember.jsp?msg=2" />
</c:forEach>

<c:redirect url="LoginMember.jsp?error=1" />

