package com.weikun.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;














import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.weikun.model.CategoryExample;
import com.weikun.model.Item;
import com.weikun.model.Product;
import com.weikun.model.ProductExample;
import com.weikun.service.IPetService;
import com.weikun.service.IUserService;


@Controller
@RequestMapping("/pet")
public class PetController  {
	private IPetService petService;	
	public IPetService getPetService() {
		return petService;
	}
	@Autowired
	public void setPetService(IPetService petService) {
		this.petService = petService;
	}
	@RequestMapping("/category")
	public void queryC(Map map){
		CategoryExample ce=new CategoryExample();
		ce.createCriteria().andCatidIsNotNull();
		map.put("ulist", petService.selectByExample(ce));	
				
	}
	
	@RequestMapping(value="/query/{id}/con/{con}")
	public ModelAndView queryPetById(@PathVariable(value="id") String id,
			@PathVariable(value="con") String con){//con：查询条件
		Map map=new HashMap();	
		ModelAndView mv=new ModelAndView();
		List list =null;
		switch (con) {
		case "cate":
			map.put("in_category", id);
			list=petService.selectProduct(map);//result执行结果
			mv.setViewName("shop/product.ftl");
			break;
		case "pro":
			map.put("in_pro", id);
			list=petService.selectItem(map);//result执行结果
			mv.setViewName("shop/items.ftl");
			break;
		case "item":
			map.put("in_item", id);
			list=petService.selectItem(map);//result执行结果
			mv.setViewName("shop/item.ftl");
			break;
		default:
			break;
		}
		
		
		for(Object m :list){
			if(m instanceof Product){
				Product p=((Product)m);
			}else if(m instanceof Item){
				Item p=((Item)m);
			}
			
			//System.out.println(p.getCategory().getCatid());
			
		}
		mv.addObject("plist", list);
		return mv;
	}

}
