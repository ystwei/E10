package com.weikun.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.xmlrpc.base.Array;
import com.weikun.model.Cart;
import com.weikun.service.ICartService;
import com.weikun.service.IPetService;

@Controller
@RequestMapping("/cart")
public class CartController {
	private ICartService cartService;

	public ICartService getCartService() {
		return cartService;
	}
	@Autowired
	public void setCartService(ICartService cartService) {
		this.cartService = cartService;
	}	
	@RequestMapping(value="/add/{id}/qty/{qty}")
	public ModelAndView addCart(@PathVariable(value="id") String itemId,
			@PathVariable(value="qty") int qty){//con����ѯ����
		ModelAndView mv=new ModelAndView();
		Map map=new HashMap();
		map.put("in_itemid", itemId);
		map.put("in_qty", qty);
		List<Cart> clist=cartService.addCart(map);
		mv.addObject("clist", clist);

		mv.setViewName("shop/cart.ftl");
		return mv;
	}
	@RequestMapping(value="/del/{id}/orderid/{orderid}")
	public ModelAndView delCart(@PathVariable(value="id") String itemId,
			@PathVariable(value="orderid") String orderId){

		ModelAndView mv=new ModelAndView();
		Map map=new HashMap();
		map.put("in_itemid", itemId);
		map.put("in_orderid", orderId);
		List<Cart> clist=cartService.delCart(map);
		mv.addObject("clist", clist);
		mv.setViewName("shop/cart.ftl");

		return mv;
	}
	@RequestMapping(value="/update")
	public ModelAndView updateCart(@ModelAttribute("cart") Cart cart){

		ModelAndView mv=new ModelAndView();
		//System.out.println(cart.getIlist());
		//System.out.println(cart.getQlist());
		
		
		Map<String,Object> map = new HashMap<String,Object>();  
		System.out.println(Arrays.toString(cart.getDlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		System.out.println(Arrays.toString(cart.getQlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		System.out.println(Arrays.toString(cart.getOlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		map.put("in_olist", Arrays.toString(cart.getOlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		map.put("in_qlist", Arrays.toString(cart.getQlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		map.put("in_dlist", Arrays.toString(cart.getDlist().toArray()).replace("[", "").replace("]", "").replace(" ", ""));
		/*卫昆*/
		/*我来了
		*
		*
		* */
		
		map.put("f_delimiter", ",");

		List<Cart> clist=cartService.updateCartB(map);
		mv.addObject("clist", clist);
		mv.setViewName("shop/cart.ftl");
		return mv;
	}
	@RequestMapping(value="/check/oid/{oid}")
	public ModelAndView check(@PathVariable(value="oid") String oid){
		
		ModelAndView mv=new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>(); 
		map.put("in_orderid", oid);
		cartService.updateOrders(map);
		mv.setViewName("shop/main.ftl");
		return mv;
	}
}
