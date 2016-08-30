package com.weikun.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weikun.dao.CategoryMapper;
import com.weikun.dao.PetMapper;
import com.weikun.model.Category;
import com.weikun.model.CategoryExample;

@Service
public class PetServiceImpl implements IPetService {
	private PetMapper pdao;
	public PetMapper getPdao() {
		return pdao;
	}
	@Autowired
	public void setPdao(PetMapper pdao) {
		this.pdao = pdao;
	}
	
	
	public CategoryMapper getCdao() {
		return cdao;
	}
	@Autowired
	public void setCdao(CategoryMapper cdao) {
		this.cdao = cdao;
	}


	private CategoryMapper cdao;
	
	
	
	@Override
	public List selectProduct(Map map) {
		// TODO Auto-generated method stub
		return pdao.selectProduct(map);
	}
	@Override
	public List<Category> selectByExample(CategoryExample example) {
		// TODO Auto-generated method stub
		return cdao.selectByExample(example);
	}
	@Override
	public List selectItem(Map map) {
		// TODO Auto-generated method stub
		return pdao.selectItem(map);
	}
	
	

}
