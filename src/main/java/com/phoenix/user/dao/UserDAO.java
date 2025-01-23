package com.phoenix.user.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		
		if(sqlsession.insert("User.join", user) == 1) {
			result = true;
		}
		sqlsession.insert("User.makeResumes", user);
		return result;
	}
	
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlsession.selectOne("User.checkId", userid);
		if( cnt == 1 ) {
			result = true;
		}
		
		return result;
	}
	
	public UserDTO login(String userid,String userpw) {
//		System.out.println("================"+userid+"=========="+userpw+"=========");
		boolean result = false;
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		UserDTO member =
				sqlsession.selectOne("User.login",datas);
		
		return member;
	}
	
	
	public boolean editMyPage(String userid, String useremail, String userphone) {
		
		boolean result = false;
		
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("useremail", useremail);
		datas.put("userphone", userphone);
		
		if( sqlsession.update("User.editMyPage", datas) == 1) {
			result = true;
		}
		return result;
	}

	public List<UserDTO> getinform (String userid){
		
		List<UserDTO> list = new ArrayList<>();
		
		list = sqlsession.selectList("User.getinform", userid);
			
		return list;
	}

	public boolean editPassword(String userid, String userpw) {
		
		boolean result = false;
		
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		if( sqlsession.update("User.editPassword", datas) == 1) {
			result = true;
		}
		return result;
	}
	
}







