<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/division.css">
<style >
div.all {
	width: 100%;
}
div.left {	
	width: 20%;
	float: left;
}
div.right {
	width: 80%;
	float: right;
}


</style>
</head>
<body>
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" >
			회원가입 구현완료<br>
			<br>
			로그인 구현완료<br>
			-  세션영역에 로그인한 유저정보 UserDTO객체로 넘겨줌<br>
				- 세션 어트리뷰트명 : session_mem<br>
		</div>
	</div>
</body>
<script src="/header.js"></script>
<script >
// 	document.getElementById("menulogin").href = "/logout/logout.jsp";
</script>

</html>