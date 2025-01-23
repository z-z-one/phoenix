package com.phoenix.resumes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phoenix.action.Action;
import com.phoenix.action.ActionForward;
import com.phoenix.user.dao.UserDTO;

public class ResumesAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		HttpSession session = request.getSession();
	    UserDTO member = (UserDTO) session.getAttribute("session_member");
//	    gender[Integer.parseInt(request.getParameter("gender"))];
		String userid = member.getUserid();
		ResumesDTO resumes = new ResumesDTO(
				request.getParameter("username"),
				request.getParameter("gender"),
				member.getUserphone(),
				member.getUseremail(),
				request.getParameter("hight"),
				request.getParameter("school"),
				request.getParameter("major"),
				request.getParameter("term"),
				request.getParameter("career"),
				request.getParameter("etc"),
				userid
				);
		ResumesDAO reDao = new ResumesDAO();
		
		ActionForward forward = new ActionForward();
		
		
		if(reDao.saveDB(resumes)) {
			forward.setPath("/resume/finished.jsp");
			forward.setRedirect(true);
		} else {
			forward.setPath("/index.jsp");
			forward.setRedirect(true);
		}
		
		
		return forward;
	}
}
