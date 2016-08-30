package com.weikun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weikun.dao.AccountMapper;
import com.weikun.dao.ProfileMapper;
import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import com.weikun.model.Profile;
@Service
public class ProfileService implements IProfileService {
	private ProfileMapper dao;
	
	public ProfileMapper getDao() {
		return dao;
	}
	@Autowired
	public void setDao(ProfileMapper dao) {
		this.dao = dao;
	}
	
	@Override
	public int insert(Profile record) {
		// TODO Auto-generated method stub
		return dao.insert(record);
	}

}
