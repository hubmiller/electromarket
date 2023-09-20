<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="/menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="./BoardUpdateAction.do?num=${board.num}&pageNum=${pageNum}" method="post"
		      class="form-horizontal">
			<input type="hidden" value="${sessionId}" name="id">
			
			<div class="form-group row">
					<label class="col-sm-2">성명</label>
					
					<div class="col-sm-3">
						<input name="name" type="text" class="form-control" placeholder="name"
				       	       value="${board.name}">
					</div>
			</div>
			
			<div class="form-group row">
					<label class="col-sm-2">제목</label>
					
					<div class="col-sm-5">
						<input name="subject" type="text" class="form-control" placeholder="subject"
				       	       value="${board.subject}">
					</div>
			</div>
			
			<div class="form-group row">
					<label class="col-sm-2 control-label">내용</label>
					
					<div class="col-sm-8">
						<textarea name="content" cols="50" rows="5" class="form-control"
						          placeholder="content">${board.content}</textarea>
				    </div>
			</div>
			
			<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<c:if test="${board.id == sessionId}">
							<a href="./BoardDeleteAction.do?num=${board.num}&pageNum=${pageNum}"
						   	   class="btn btn-danger">삭제</a>
							<input type="submit" value="수정" class="btn btn-success">
						</c:if>
						
						<a href="./BoardListAction.do?pageNum=${pageNum}"
						   class="btn btn-primary">목록</a>
					</div>
			</div>
		</form>
	</div>
	
	<hr>
	<%@ include file="/footer.jsp" %>
</body>
</html>