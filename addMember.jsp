<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
      href="../resources/css/bootstrap.min.css">
<title>회원가입</title>
<script type="text/javascript">
	function checkForm() {
		var form = document.newMember;
		
		if (!form.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if (!form.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		if (form.password.value != form.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
</head>
<body>
	<%@ include file="/menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 가입</h1>
		</div>
	</div>
	
	<div class="container">
		<form name="newMember" action="./processAddMember.jsp" class="form-horizontal"
		 method="post" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="text" class="form-control" placeholder="password">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="text" class="form-control" placeholder="password_confirm">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="name">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남" /> 남
					<input name="gender" type="radio" value="여" /> 여				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">생일</label>
				<div class="col-sm-4">
					<input name="birthyy" type="text" maxlength="4" placeholder="년(4자)" size="6">
					
					<select name="birthmm" id="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select><input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input name="mail1" type="text" maxlength="50"> @
					
					<select name="mail2" id="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>			
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" placeholder="phone">				
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="address">				
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-primary" value="취소" onclick="reset()">				
				</div>
			</div>
		</form>
	</div>
	
	<hr>
	<%@ include file="/footer.jsp" %>
</body>
</html>