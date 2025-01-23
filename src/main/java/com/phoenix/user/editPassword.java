package com.phoenix.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phoenix.action.Action;
import com.phoenix.action.ActionForward;
import com.phoenix.user.dao.UserDAO;
import com.phoenix.user.dao.UserDTO;

public class editPassword implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
				
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("new_userpw");

		udto.setUserid(userid);
		udto.setUseremail(userpw);
		
		if(udao.editPassword(userid,userpw)) {
			// 성공
			forward.setRedirect(true);
			forward.setPath("/my_page/pwfinished.jsp");
		} else {
			forward.setRedirect(false);
			forward.setPath("/my_page/chkPassword.my");
		}
		
		return forward;
	}
}


