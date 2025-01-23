<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
form { width: 40%; }

/*로그인은 따로 화면 나눔*/

div.all {
	display: flex;
}
div.left {	
  	flex: 0 0 270px; 
 	 min-width: 270px; 
}
div.right {
		 flex: 1; 
		 height: 670px;
		display: flex;
		justify-content: center;
		align-items: center;
}
/*--

div {
	width: 100%;
}
div.left {	
	width: 20%;
	float: left;
}
div.right {
	width: 80%;
	float: right;
	height: 670px;
	display: flex;
	justify-content: center;
	align-items: center;
}---*/

div.idArea{
	margin-bottom: 20px;
}
div.pwArea{
	margin-bottom: 20px;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #434343;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom: 30px;
}

button:hover {
  opacity: 0.8;
}

a.join:hover{
	text-decoration: underline;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body >
	
	<div class="all">
		<div class = "left">
			<header ></header>
		</div>
	
		<div class = "right">
		
			<form action="/login/logincheck.jsp" method="post" id="frm" class="frm" name="frm" >
			   	<div class="idArea">
				   	<label for="userid" ><b>아이디</b></label>
				    <input  type="text" placeholder="아이디 입력" name="userid"  id="userid" class="userid" required>
			   	</div>
			
			    <div class="pwArea">
				    <label for="userpw"><b>비밀번호</b></label>
				    <input type="password" placeholder="비밀번호 입력" name="userpw"  id="userpw" class="userpw" required>
			    </div>
			        
			    <button type="submit" id="loginbtn" class="loginbtn" name="loginbtn" >로그인</button>
			    
			    <div align="right">
			    	<a href="/join/join.jsp" class = "join" style="color: #434343 ; font-size: 18px; margin-right: 3px;" >회원가입</a>
			    </div>
			</form>
		</div>
	</div>
	
	

	
</body>
<script src="/header.js"></script>

</html>