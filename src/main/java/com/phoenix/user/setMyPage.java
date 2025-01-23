package com.phoenix.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.phoenix.action.Action;
import com.phoenix.action.ActionForward;
import com.phoenix.user.dao.UserDAO;
import com.phoenix.user.dao.UserDTO;

public class setMyPage implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse resp) {
		
	    HttpSession session = request.getSession();
	    UserDTO member = (UserDTO) session.getAttribute("session_member");
	    ActionForward forward = new ActionForward();
	    UserDAO udao = new UserDAO();
	    
	    if(member == null) {
	    	// 로그인 안돼 있을 경우
	    	
	        forward.setRedirect(false);
	        forward.setPath("/menu/menucontroller.jsp");
	        return forward;
	        
	      } else {
	    	// 로그인 돼 있을 경우  
	    	  
	        // request.setAttribute("member", member);
		    	
		    	String userid = member.getUserid();
		    	
		    	// 마이페이지 정보 가져오기
		    	request.setAttribute("member", udao.getinform(userid));
		    	
		    	// 마이페이지 JSP 파일로 이동
		    	forward.setRedirect(false);
		    	forward.setPath("/my_page/MyPage.jsp");
		    	return forward;
	        
	      }
	      
	      // 마이페이지 JSP 파일로 이동
//	      forward.setRedirect(false);
//	      forward.setPath("MyPage.jsp");
//	      
//	      return forward;
	
	}

}
