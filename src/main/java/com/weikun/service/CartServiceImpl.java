package com.weikun.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weikun.dao.CartMapper;
import com.weikun.dao.PetMapper;
import com.weikun.model.Cart;
import com.weikun.model.CartKey;
@Service
public class CartServiceImpl implements ICartService {
	private CartMapper cdao;
	
	public CartMapper getCdao() {
		return cdao;
	}
	@Autowired
	public void setCdao(CartMapper cdao) {
		this.cdao = cdao;
	}

	@Override
	public List<Cart> addCart(Map map) {
		// TODO Auto-generated method stub
		return cdao.addCart(map);
	}
	@Override
	public List<Cart> delCart(Map map) {
		// TODO Auto-generated method stub
		return cdao.delCart(map);
	}
	@Override
	public int updateCart(Map map) {
		// TODO Auto-generated method stub
		return cdao.updateCart(map);
	}
	@Override
	public List<Cart> updateCartB(Map map) {
		// TODO Auto-generated method stub
		return cdao.updateCartB(map);
	}
	@Override
	public void updateOrders(Map map) {
		// TODO Auto-generated method stub
		cdao.updateOrders(map);
	}
	

}
