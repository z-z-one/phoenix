package com.phoenix.user;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.apache.coyote.Request;

import com.phoenix.action.Action;
import com.phoenix.action.ActionForward;
import com.phoenix.user.dao.UserDAO;
import com.phoenix.user.dao.UserDTO;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		UserDTO user = new UserDTO();
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		
		user.setUserid( request.getParameter("userid") );
		user.setUserpw( request.getParameter("userpw") );
		user.setUseremail( request.getParameter("useremail") );
		user.setUserphone( request.getParameter("userphone") );
		
		if(udao.join(user)) {
			forward.setPath("/join/finished.jsp");
			forward.setRedirect(true);
		} else {
			forward.setPath("/index.jsp");
			forward.setRedirect(true);
		}
		
		
		return forward;
		
		
		
	}

	
}








