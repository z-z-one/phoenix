<%@page import="com.phoenix.resumes.ResumesDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
	table{
		margin:0 auto;
		width: 80%;
	}
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
	div.i18{
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 100px;
		}
	div.cont{
		display: inline;
	}
	div.innercont{
		display: inline-block;
		margin: 10px;
		width: 100%;
		margin: 18px;
	}
	div.careerArea{
		display: inline-block; width: 80%
	}
	label{
	display: inline-block;
		width: 90px;
	}
	
	input[type=radio]{
		accent-color: #434343;
	}
	
	#title{
		height: 50px;
	}
	#board{
		width:	98%;
		height:	300px;
		resize: none;
	}
	#url-input{
		height: 50px;
	}
	/* 파일 */
	.filebox .upload-name {
	    display: inline-block;
	    height: 40px;
	    padding: 0 10px;
	    vertical-align: middle;
	    border: 1px solid #dddddd;
	    width: 90%;
	    color: #999999;
	}
	.filebox label {
		margin-top: 10px;
		display:inline-block;
		width: 60px;
		background-color: #434343;
		color: white;
		padding: 5px 5px;
		border: none;
		cursor: pointer;
		margin-left: 10px;
		margin-right: 10px;
		margin: 8px auto;
	}
	.filebox input[type="file"] {
	    position: absolute;
	    width: 0;
	    height: 0;
	    padding: 0;
	    overflow: hidden;
	    border: 0;
	}
	
	/* 저장 버튼 */
	input[type=button],input[type=submit],input[type=reset] ,button{
	display:inline-block;
	width: 70px;
	background-color: #434343;
	color: white;
	padding: 5px 5px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
}
	button.del{
		width: 35px;
		background-color: #00ff0000;
		border-color: #00ff0000;
		font-size: 20px;
	}
	
	/* 텍스트 */
	input[type=text] ,textarea {
		background-color:#00ff0000;
		width: 30%;
		border: none;
		font-size: 15px;
		outline:none;
		border-bottom: solid thin;
	}
	hr{
		margin-top: 30px;
		margin-bottom: 30px;
	}
	
</style>

</head>
<body>
<%-- <c:set var="Resumes" value="${sessionScope.Resumes }"/> --%>

	<div class="all">
		<div class = "left">
			<header ></header>
		</div>
		
		<div class = "right" >
			<div class = "i18">
				<form name="join_form" id="join_form" style="width: 70%;" action="/resume/resume.rs" >
				<fieldset>
					<legend  style="font-size: 20px;" >이력서</legend>
					<div class = "cont">
						<div class="innercont" style="margin-bottom: 25px !important;">
							<label >이름</label>
							<input type="text" name="username" id="username" value="${Resumes.username }">
						</div>
						<div class="innercont" style="display: flex !important; margin: 0px !important; margin-left: 18px !important; ">
							<label style="align-self: center;">성별 ${Resumes.gender}</label>
							
							<p >
						        남 : <input type="radio" 
						                    name="gender" value="male"  class="male" />
						        여 : <input type="radio" 
						                    name="gender" value="female" class="female" >
						    </p>
							
						</div>
						<div class="innercont" >
							<label >연락처</label>
							<input type="text" name="userphone" id="userphone" value="${Resumes.userphone }">
						</div>
						
						<div class="innercont">
							<label>이메일</label>
							<input type="text" name="useremail" id="useremail" value="${Resumes.useremail }">
						</div>
						
					</div>
					<hr>
					<div class = "cont">
						<div class="innercont">
							<label>최종학력</label>
							<input type="text" name="hight" id="hight" value="${Resumes.hight }">
						</div>
						<div class="innercont">
							<label>학교명</label>
							<input type="text" name="school" id="school" value="${Resumes.hight }">
						</div>
						<div class="innercont">
							<label>전공</label>
							<input type="text" name="major" id="major" value="${Resumes.major }">
						</div>
						<div class="innercont">
							<label>재학기간</label>
							<input type="text" name="term" id="term" value="${Resumes.term }">
						</div>
					</div>
					<hr>
					
					<div class = "cont">
						<div class="innercont">
							<label>경력 및 자격증</label>
							<textarea style="width: 70%;" name="career" id="career" >${Resumes.career }</textarea>
						</div>
						<div class="innercont">
							<label>기타사항</label>
							<textarea style="width: 70%;" name="etc" id="etc" >${Resumes.etc }</textarea>
						</div>
						
					</div>
					<hr>
					<div class="input_group" align="right">
						<input type="submit" name="save" value="저장"  class="save" id="save" />
						<input type="reset" name="button2" value="초기화" style="margin-left: 20px"/>
					</div>
				</fieldset>
			</form>
			</div>
		</div>
	</div>
	
	
	
</body>
	<script src="../header.js"></script>

	<script >
	<% ResumesDTO Res = (ResumesDTO)session.getAttribute("Resumes");%>
	  var gen = '<%=Res.getGender()%>';
// 	  alert(gen);
	if(gen=="male"){
		$('.male').attr("checked", true);
	}else{
		$('.female').attr("checked",true);
	}
	
<%-- 	$('.male').attr("checked", <%=male %>); --%>
<%-- 	$('.female').attr("checked",<%=female %>); --%>
    
	</script>
	
</html>