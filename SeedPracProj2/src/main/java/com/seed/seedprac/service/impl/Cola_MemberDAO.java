package com.seed.seedprac.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.seed.seedprac.service.Cola_MemberService;
@Repository
public class Cola_MemberDAO implements Cola_MemberService{

	//root-context에 등록한 sqlsessiontemplate객체를 통해 데이터 베이스 작업을 한다.
	 
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean isColaMember(Map map) {
		// TODO Auto-generated method stub
		int isMember=template.selectOne("Cola_isMember", map);
		
		return isMember==1?true:false;
	}

}
