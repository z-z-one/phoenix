package com.phoenix.resumes;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.mybatis.SqlMapConfig;

public class ResumesDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public ResumesDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean saveDB(ResumesDTO resumes) {
		boolean result = false ;
		
		if(sqlsession.update("User.saveResumes", resumes) == 1) {
			result = true;
		}
		
		return result;
	}
	
	public ResumesDTO loadDB(String userid) {
		ResumesDTO resumes = null;
		
		System.out.println("======================loadDB=================");
		resumes = (ResumesDTO)sqlsession.selectOne("User.loadResumes", userid);
		
		return resumes;
	}
	
}
