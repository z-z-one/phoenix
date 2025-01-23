<%@page import="com.phoenix.user.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String userid = request.getParameter("userid");
	UserDAO mdao = new UserDAO();
	if(!mdao.checkId(userid)){
		//회원가입 가능한경우
		out.print("ok");//결과값을 자신을 부른 곳으로 넘겨주는
	}else{
		//회원가입 불가능
		out.print("not-ok");
	}
%>