package com.weikun.dao;

import com.weikun.model.Account;
import com.weikun.model.AccountExample;



import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface AccountMapper {
    int countByExample(AccountExample example);

    int deleteByExample(AccountExample example);

    int deleteByPrimaryKey(String username);

    int insert(Account record);

    int insertSelective(Account record);

    List<Account> selectByExample(AccountExample example);
    
    Account login(@Param("record") Account record);
    
    Account validate(@Param("record") Account record);
    
    Account selectByPrimaryKey(String username);

    int updateByExampleSelective(@Param("record") Account record, @Param("example") AccountExample example);

    int updateByExample(@Param("record") Account record, @Param("example") AccountExample example);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);
}