<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<!-- <link rel="stylesheet" href="/division.css"> -->
<style >

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
}

legend{
	font-size: 25px;
}

form { 
	width: 65%;
	 }

*:focus {
    outline: 0;
}

label{
	display:inline-block;
	width: 80px;
	padding: 5px;
}
label.re{width: 140px; margin-left: 90px;}

input[type=button],input[type=submit],input[type=reset] {
	display:inline-block;
	width: 70px;
	background-color: #434343;
	color: white;
	padding: 5px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
}
input[type=text] ,input[type=password]{
	background-color:#00ff0000;
	padding: 5px 5px;
	margin: 8px 0;
	border: hidden;
	cursor: pointer;
	border-bottom: solid thin;
	border-bottom-color:#434343; 
}


button:hover {
  opacity: 0.8;
}
</style>
</head>
<body>
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		<div class = "right" >
		<!-- html day10 form5 -->
			<form name="join_form" id="join_form" form action="/join/UserJoin.us" method="post">
				<fieldset>
					<legend >회원가입</legend>
					<div>
						<label>아이디</label>
						<input type="text" name="userid" id="userid">
						<input type="button" value="중복확인" onclick="checkId(join_form.userid.value)"> 
					</div>
					<hr>
					<div>
						<label>비밀번호</label>
						<input type="password" name="userpw" id="userpw">
						
						<label class="re">비밀번호 확인</label>
						<input type="password" name="userpwre" id="userpwre" style="margin-left: -40px !important;">
					</div>
					<hr>
					
					<div>
						<label>이메일</label>
						<input type="text" name="useremail" id="useremail" >
					</div>
					<hr>
					
					<div>
						<label>연락처</label>
						<input type="text" name="userphone" id="userphone">
					</div>
					<hr>
					
					<div class="input_group" align="right">
						<input type="submit" name="button" value="가입하기" />
						<input type="reset" name="button2" value="초기화" style="margin-left: 20px"/>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
<script src="/header.js"></script>
 <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- 정규표현식 검사 객체를 참조한다. -->
    <script src="regex.js"></script>
<script >

var n=0;

$(function() {
    /** 가입폼의 submit 이벤트 */
    $("#join_form").submit(function(e) {
        // 기본동작 수행 방식
        e.preventDefault();

        /** 아이디 검사 */
        if (!regex.value('#userid', '아이디를 입력해주세요')) { return false; }
        if (!regex.eng_num('#userid', '아이디는 영어와 숫자만 입력 가능합니다')) { return false; }
        if (!regex.min_length('#userid', 4, '아이디는 최소4자이상 입력해주세요 ')) { return false; }
        if (!regex.max_length('#userid', 9, '아이디는 최대 9자 까지만 입력 가능합니다.')) { return false; }
        if(n==0){alert("아이디 중복확인을 먼저 해주세요!");return false;}

        /** 비밀번호 검사 */
        if (!regex.value('#userpw', '비밀번호를 입력하세요.')) { return false; }
        if (!regex.min_length('#userpw', 4, '비밀번호는 최소 4자 이상 입력 가능합니다.')) { return false; }
        if (!regex.max_length('#userpw', 20, '비밀번호는 최대 20자 까지만 입력 가능합니다.')) { return false; }
        if (!regex.compare_to('#userpw', '#userpwre', '비밀번호를 확인해주세요')) { return false; }


        /** 이메일 검사 */
        if (!regex.value('#useremail', '이메일을 입력하세요.')) { return false; }
        if (!regex.email('#useremail', '이메일 주소가 잘못되었습니다.')) { return false; }

        /** 연락처 검사 */
        if (!regex.value('#userphone', '연락처를 입력하세요.')) { return false; }
        if (!regex.phone('#userphone', '연락처가 잘못되었습니다.')) { return false; }

        // 처리 완료
//         alert("가입완료!!");
        let frm = document.join_form;
        frm.submit();
        
        
    });
});

function checkId(userid){
//	alert(data);	
	
	if(userid == ""){
		alert("아이디를 입력해주세요");
		return false;
	}else{
		//ajax통신
		let xhr = new XMLHttpRequest();
		xhr.open("GET","idcheck.jsp?userid="+userid,true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.responseText.trim() == "ok"){
					alert("사용가능 아이디 입니다.");
					n += 1;
				}else{
					alert("이미 사용중인 아이디 입니다.");
					n=0;
				}
				
			}
		}
	}
	
	
}
	
	
</script>

</html>