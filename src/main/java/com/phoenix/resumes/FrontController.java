package com.phoenix.resumes;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phoenix.action.ActionForward;
import com.phoenix.user.UserJoinAction;

@WebServlet("*.rs")
public class FrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, 
			HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		
			String requestURI = request.getRequestURI();
			ActionForward forward = null;
					
			if( requestURI.equals("/resume/resume.rs") ) {
				System.out.println(requestURI + " 도착!!");
				forward = new ResumesAction().execute(request, response);
			} 
			
			// 전송에 대한 일괄처리
			if( forward != null ) {
				if( forward.isRedirect() ) {	
					// true : redirect
					response.sendRedirect(forward.getPath());
				} else {
					// false : forward
					RequestDispatcher disp 
						= request.getRequestDispatcher(forward.getPath());
					disp.forward(request, response);
				}
			}
		
	}
	
}
