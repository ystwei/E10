package com.weikun.dao;

import java.util.List;
import java.util.Map;



public interface PetMapper {
	 //存储过程调 返回值
	List  selectProduct(Map map);
	List  selectItem(Map map);
}
