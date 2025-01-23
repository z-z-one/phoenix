package com.phoenix.portfolio;

import java.sql.Clob;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phoenix.coverletter.dao.CoverletterDTO;
import com.phoenix.mybatis.SqlMapConfig;
import com.phoenix.resumes.ResumesDTO;

public class PortfolioDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public PortfolioDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public void makeDB(String userid) {
		sqlsession.insert("User.makeEmptyPofol", userid);
		
	}
	
	public void delDB(String userid , String pnum) {
		PortfolioDTO dto = new PortfolioDTO();
		dto.setUserid(userid);
		dto.setPnum(pnum);
		sqlsession.delete("User.delPortfolio",dto);
	}
	
	
	public boolean saveDB(PortfolioDTO portfolio) {
		boolean result = false ;
		
		try {
			if(portfolio.getPnum().equals("empty")	) {
				sqlsession.insert("User.savePortfolio", portfolio);
			}else {
				sqlsession.update("User.updatePortfolio", portfolio);
			}
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public PortfolioDTO loadDB2(String userid,String pnum) {
		PortfolioDTO Portfolios = new PortfolioDTO();
		Portfolios.setPnum(pnum);
		Portfolios.setUserid(userid);
		Portfolios = sqlsession.selectOne("User.loadPortfol", Portfolios);
		
		return Portfolios;
	}
	
	public List<PortfolioDTO> loadDB(String userid) {
//		 List<Map<String, Object>> result = sqlsession.selectList("User.loadPortfolios",userid);
		 //{PNUM=100, USERID=admin, PPATH=/path/to/file, PURL=http://example.com, PTITLE=Portfolio Title, PCONTENTS=oracle.sql.CLOB@d2450a}
//		 PortfolioDTO[] portfolios = new PortfolioDTO[result.size()];
		 
//		 System.out.println("=====================coverletter==================");
//			for(int i=0;i<portfolios.length;i++) {
//				portfolios[i] = new PortfolioDTO();
//				portfolios[i].setPnum((String) result.get(i).get("pnum"));
//				portfolios[i].setUserid(userid);
//				portfolios[i].setPpath((String) result.get(i).get("ppath"));
//				portfolios[i].setPurl((String) result.get(i).get("purl"));
//				portfolios[i].setPtitle((String) result.get(i).get("ptitle"));
//				portfolios[i].setPcontents((String) result.get(i).get("pcontents"));
//			}
			List<PortfolioDTO>results = sqlsession.selectList("User.loadPortfolios",userid);
		return results;
	}
	
}
