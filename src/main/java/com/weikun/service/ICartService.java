package com.weikun.service;

import java.util.List;
import java.util.Map;

import com.weikun.model.Cart;
import com.weikun.model.CartKey;

public interface ICartService {
	List<Cart>  addCart(Map map);
	List<Cart>  delCart(Map map);
	int updateCart(Map map);
	List<Cart>  updateCartB(Map map);
	void  updateOrders(Map map);
}
