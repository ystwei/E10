package com.weikun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weikun.dao.AccountMapper;
import com.weikun.model.Account;

@Service
public class UserServiceImpl implements IUserService {
	
	private AccountMapper dao;
	
	public AccountMapper getDao() {
		return dao;
	}
	@Autowired
	public void setDao(AccountMapper dao) {
		this.dao = dao;
	}
	@Override
	public Account login(Account record) {
		// TODO Auto-generated method stub
		return dao.login(record);
	}
	
	@Override
	public Account validate(Account record) {
		// TODO Auto-generated method stub
		return dao.validate(record);
	}
	@Override
	public int insert(Account record) {
		// TODO Auto-generated method stub
		return dao.insert(record);
	}
	@Override
	public Account selectByPrimaryKey(String username) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(username);
	}
	

	

}
