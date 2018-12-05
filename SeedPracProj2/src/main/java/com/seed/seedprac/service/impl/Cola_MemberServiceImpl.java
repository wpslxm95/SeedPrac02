package com.seed.seedprac.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.seed.seedprac.service.Cola_MemberService;
@Service("cola_MemberService")
public class Cola_MemberServiceImpl implements Cola_MemberService {

	@Resource(name = "cola_MemberDAO")
	private Cola_MemberDAO dao;
	
	@Override
	public boolean isColaMember(Map map) {
		// TODO Auto-generated method stub
		return dao.isColaMember(map);
	}

}
