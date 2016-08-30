package com.weikun.service;

import java.util.List;
import java.util.Map;

import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import com.weikun.model.Item;
import com.weikun.model.ItemExample;
import com.weikun.model.Product;
import com.weikun.model.ProductExample;

public interface IPetService {
	List<Category> selectByExample(CategoryExample example);
	//通过存储过程的各种条件查询chongw
	List selectProduct(Map map);
	List  selectItem(Map map);
}
