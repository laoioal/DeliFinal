package com.githrd.deli.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.githrd.deli.vo.*;

/**
 * 이 클래스는 데이터베이스 작업을 전담해서 처리하는 클래스
 * @author	안은비
 * @since	2022.07.14
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.07.14	-	클래스제작
 * 				2022.07.20	-	getId()
 * 				2022.07.21	-	getMail()
 * 				2022.07.21	-	editPw()
 * 				2022.07.22	-	getBinfo()
 * 				2022.07.22	-	getEinfo()
 * 				2022.07.25	-	insEsti()
 * 				2022.07.25	-	upEtable()
 * 				2022.07.26	-	getPoint()
 * 				2022.07.26	-	upEsti()
 * 				2022.07.27	-	insCoupon()
 * 				2022.07.27	-	getClist()
 * 									담당자 ] 안은비
 *
 */

public class EunbeeDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public String getId(String mail) {
		return sqlSession.selectOne("eSQL.selId", mail);
	}
	
	public String getMail(EunbeeVO eVO) {
		return sqlSession.selectOne("eSQL.selMail", eVO);
	}
	
	public int editPw(EunbeeVO eVO) {
		return sqlSession.update("eSQL.upPw", eVO);
	}
	
	public List<EunbeeVO> getBinfo(String id) {
		return sqlSession.selectList("eSQL.selBinfo", id);
	}
	
	public List<EunbeeVO> getEinfo(EunbeeVO eVO) {
		return sqlSession.selectList("eSQL.selEinfo", eVO);
	}
	
	public int insEsti(EunbeeVO eVO) {
		return sqlSession.insert("eSQL.insEsti", eVO);
	}
	
	public int upEtable(EunbeeVO eVO) {
		return sqlSession.update("eSQL.upEtable", eVO);
	}
	
	public EunbeeVO getPoint(String idb) {
		return sqlSession.selectOne("eSQL.selPoint", idb);
	}
	
	public int upEsti(EunbeeVO eVO) {
		return sqlSession.update("eSQL.upEsti", eVO);
	}
	
	public int insCoupon(EunbeeVO eVO) {
		return sqlSession.insert("eSQL.insCoupon", eVO);
	}
	
	public List<EunbeeVO> getClist(String id) {
		return sqlSession.selectList("eSQL.selClist", id);
	}

}
