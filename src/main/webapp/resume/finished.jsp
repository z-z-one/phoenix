<%@page import="com.phoenix.resumes.ResumesDTO"%>
<%@page import="com.phoenix.resumes.ResumesDAO"%>
<%@page import="com.phoenix.user.dao.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	UserDTO userinf = (UserDTO)session.getAttribute("session_member");
	String userid = userinf.getUserid();
	
	ResumesDAO reDAO = new ResumesDAO();
	ResumesDTO Resumes = reDAO.loadDB(userid);
	
	session.setAttribute("Resumes", Resumes);
%>


    <script>
    	alert("저장성공");
    	location.href ="/resume/resume.jsp";
    </script>