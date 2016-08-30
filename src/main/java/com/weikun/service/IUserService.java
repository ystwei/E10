package com.weikun.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.weikun.model.Account;


public interface IUserService {
	 Account login(@Param("record") Account record);
	
	 Account validate(@Param("record") Account record);
	 int insert(Account record);
	 Account selectByPrimaryKey(String username);
}
