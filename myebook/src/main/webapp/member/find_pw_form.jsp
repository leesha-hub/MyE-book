<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {
		$("#findBtn").click(function() {
			$.ajax({
				url : "find_pw.do",
				type : "POST",
				data : {
					user_id : $("#user_id").val(),
					email : $("#email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
<title>비밀번호 찾기</title>
<style>
body {
	padding-top: 0px;
	padding-bottom: 30px;
}
</style>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>비밀번호 찾기</h3>
			</div>
			<div>
				<p>
					<label>ID</label> <input class="w3-input" type="text" id="user_id"
						name="user_id" required>
				</p>
				<p>
					<label>Email</label> <input class="w3-input" type="text" id="email"
						name="email" required>
				</p>
				<p class="w3-center">
					<button type="button" id=findBtn
						class="w3-button w3-block w3-blue w3-ripple w3-margin-top w3-round">find</button>
					<button type="button" onclick="history.go(-1);"
						class="w3-button w3-block w3-blue w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
				</p>
			</div>
		</div>
	</div>
</body>
</html>