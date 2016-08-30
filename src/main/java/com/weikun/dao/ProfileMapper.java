package com.weikun.dao;

import com.weikun.model.Profile;
import com.weikun.model.ProfileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProfileMapper {
    int countByExample(ProfileExample example);

    int deleteByExample(ProfileExample example);

    int deleteByPrimaryKey(String username);

    int insert(Profile record);

    int insertSelective(Profile record);

    List<Profile> selectByExample(ProfileExample example);

    Profile selectByPrimaryKey(String username);

    int updateByExampleSelective(@Param("record") Profile record, @Param("example") ProfileExample example);

    int updateByExample(@Param("record") Profile record, @Param("example") ProfileExample example);

    int updateByPrimaryKeySelective(Profile record);

    int updateByPrimaryKey(Profile record);
}