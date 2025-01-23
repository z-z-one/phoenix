<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<!-- <link rel="stylesheet" href="/division.css"> -->
<style >
body {font-family: Arial, Helvetica, sans-serif; }

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
label.re{width: 140px; margin-left: 70px;}

input[type=button],input[type=submit],input[type=reset] {
	display:inline-block;
	width: 60px;
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
	<c:set var="member" value="${requestScope.member }"/>
<%-- 	<c:set var="member" value="${requestScope.list }"/> --%>
	<div class = "all">
		<div class = "left">
			<header ></header>
		</div>
		<div class = "right" >
		<!-- html day10 form5 -->
		<c:choose>
      		<c:when test="${member != null and fn:length(member) > 0}">
      	 		<c:forEach var="member" items="${member }">
					<form action="${pageContext.request.contextPath }/my_page/MyPage.my?userid="+${member.userid } name="rejoin_form" id="rejoin_form">
						<fieldset>
							<legend>로그인 정보</legend>
							<div>
								<label>아이디</label>
								${member.userid }
							</div>
							<hr>
							<div>
								<label>비밀번호</label>
								<input type="button" value="바로가기" onclick="javascript:comparepw('${member.userid}','${member.userpw}')">
							</div>
						</fieldset>	
						<br>	
						<fieldset>
							<input type="hidden" name="userid" value="${member.userid }">
							<legend>연락처 정보</legend>
							<div>
								<label>이메일</label>
									<input type="text" name="useremail" id="useremail" value="${member.useremail}" readonly>
									<input type="button" value="수정" onclick="javascript:updateEmailreadonly('${member.useremail}')" >
							</div>
							<hr>
							
							<div>
								<label>전화번호</label>
									<input type="text" name="userphone" id="userphone" value="${member.userphone}" readonly>
									<input type="button" value="수정" onclick="javascript:updatePhonereadonly('${member.userphone}')" >
							</div>
							<hr>
							
							<div class="input_group" align="right">
								 <input type="submit" name="button" value="수정하기" onclick="updateInform('${member.userid}','${member.useremail}','${member.userphone}')"/>
<!-- 								<input type="reset" name="button2" value="초기화" style="margin-left: 20px"/> -->
							</div>
						</fieldset>
					</form>
			</c:forEach>    
		    </c:when>
		    <c:otherwise>

         	</c:otherwise> 	
         </c:choose>
		</div>
	</div>
</body>
<script src="/header.js"></script>
 <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- 정규표현식 검사 객체를 참조한다. -->
    <script src="regex.js"></script>
<script >

$(function() {
    /** 가입폼의 submit 이벤트 */
    $("#rejoin_form").submit(function(e) {
        // 기본동작 수행 방식
        e.preventDefault();

        /** 이메일 검사 */
        if (!regex.value('#useremail', '이메일을 입력하세요.')) { return false; }
        if (!regex.email('#useremail', '이메일 주소가 잘못되었습니다.')) { return false; }

        /** 연락처 검사 */
        if (!regex.value('#userphone', '연락처를 입력하세요.')) { return false; }
        if (!regex.phone('#userphone', '연락처가 잘못되었습니다.')) { return false; }

        // 처리 완료
        alert("수정완료!!");
    });
});
	
function updateEmailreadonly(useremail){
	
	document.getElementById('useremail').readOnly = false;


}


function updatePhonereadonly(userphone){
	
	document.getElementById('userphone').readOnly = false;

}


 
function updateInform(userid,useremail,userphone){
	
    document.rejoin_form.action 
    = "${pageContext.request.contextPath }/my_page/edit.my?userid="+userid;  
 	document.rejoin_form.submit();
 	
}

function comparepw(userid, userpw){
	
	let pw = prompt("비밀번호를 입력해주세요")
	
	if( userpw == pw ){
		
	    document.rejoin_form.action 
	       = "${pageContext.request.contextPath}/my_page/chkPassword.my?userid"+userid;  
	    document.rejoin_form.submit();
	       
	} else {
		alert("비밀번호를 확인해주세요");
	}

}


</script>
</body>
</html>