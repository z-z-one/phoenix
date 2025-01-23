package com.phoenix.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phoenix.action.ActionForward;

@WebServlet("*.my")
public class MypageFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doProcess(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doProcess(req, resp);

	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String requestURI = request.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
		case "/my_page/MyPage.my" :
			forward = new setMyPage().execute(request, response);
			break;
		case "/my_page/edit.my" :
			forward = new editMyPage().execute(request, response);
			break;
		case "/my_page/chkPassword.my"	:
			forward = new chkPassword().execute(request, response);
			break;
		case "/my_page/editPassword.my" :
			forward = new editPassword().execute(request, response);
			break;
		}
		
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// true : redirect
				response.sendRedirect(forward.getPath());
				
			} else {
				// false : forward
				RequestDispatcher disp = request.getRequestDispatcher(forward.getPath());
				disp.forward(request, response);
			}
		}
	}
}
