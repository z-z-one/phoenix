package com.phoenix.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phoenix.action.Action;
import com.phoenix.action.ActionForward;
import com.phoenix.user.dao.UserDAO;
import com.phoenix.user.dao.UserDTO;

public class editMyPage implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
				
		String userid = request.getParameter("userid");
		String useremail = request.getParameter("useremail");
		String userphone = request.getParameter("userphone");
		
		udto.setUserid(userid);
		udto.setUseremail(useremail);
		udto.setUserphone(userphone);
		
		if(udao.editMyPage(userid,useremail,userphone)) {
			// 성공
			forward.setRedirect(true);
			forward.setPath("/my_page/MyPage.my?userid="+userid);
		} else {
			forward.setRedirect(false);
			forward.setPath("/my_page/MyPage.my");
//				PrintWriter out;
//				out = response.getWriter();
//				out.println("<script>alert('오류발생');history.back();</script>");
		}
		
		return forward;
	}

}
