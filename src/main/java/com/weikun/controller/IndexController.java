package com.weikun.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.weikun.model.CategoryExample;
import com.weikun.service.IPetService;


@Controller
@RequestMapping("/index")
public class IndexController  {
	
	@RequestMapping("/index")
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index.ftl");		
		return mv;	
		
	}
	@RequestMapping("/main")
	public ModelAndView main(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("shop/main.ftl");		
		return mv;	
		
	}


}
