package com.lgy.pp1.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.pp1.dao.ICDao;
import com.lgy.pp1.dto.CDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("CService")
public class CServiceImpl implements CService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<CDto> clublist() {
		log.info("@# CServiceImpl.clublist() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		ArrayList<CDto> list = dao.clublist();
		
		log.info("@# CServiceImpl.cluglist() end");
		return list;
	}

	@Override
	public void clubwrite(HashMap<String, String> param) {
		log.info("@# CServiceImpl.clubwrite() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.clubwrite(param);
		
		log.info("@# CServiceImpl.clubwrite() end");
	}

	@Override
	public CDto clubview(HashMap<String, String> param) {
		log.info("@# CServiceImpl.clubview() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		CDto dto = dao.clubview(param);
		
		log.info("@# CServiceImpl.clubview() start");
		return dto;
	}

	@Override
	public void modify_clubname(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_clubname() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_clubname(param);
		
		log.info("@# CServiceImpl.modify_clubname() end");
	}

	@Override
	public void modify_chairman(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_chairman() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_chairman(param);
		
		log.info("@# CServiceImpl.modify_chairman() end");
	}

	@Override
	public void modify_dues(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_dues() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_dues(param);
		
		log.info("@# CServiceImpl.modify_dues() end");
	}

	@Override
	public void modify_account(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_account() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_account(param);
		
		log.info("@# CServiceImpl.modify_account() end");		
	}

	@Override
	public void modify_accountbank(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_accountbank() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_accountbank(param);
		
		log.info("@# CServiceImpl.modify_accountbank() end");		
	}

	@Override
	public void modify_leftover(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_leftover() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_leftover(param);
		
		log.info("@# CServiceImpl.modify_leftover() end");		
	}

	@Override
	public void modify_regulation(HashMap<String, String> param) {
		log.info("@# CServiceImpl.modify_regulation() start");
		
		ICDao dao = sqlSession.getMapper(ICDao.class);
		dao.modify_regulation(param);
		
		log.info("@# CServiceImpl.modify_regulation() end");		
	}
	
}
