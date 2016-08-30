package com.weikun.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.weikun.model.Account;
import com.weikun.model.AccountExample;
import com.weikun.model.CategoryExample;
import com.weikun.service.IPetService;
import com.weikun.service.IProfileService;
import com.weikun.service.IUserService;

import freemarker.ext.beans.MapModel;

@Controller
@RequestMapping("/user")
@SessionAttributes( {"realname" })
public class UserController {

	private IPetService petService;	
	public IPetService getPetService() {
		return petService;
	}
	@Autowired
	public void setPetService(IPetService petService) {
		this.petService = petService;
	}

	private IUserService userService;	

	public IUserService getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	
	private IProfileService profileService;	
	
	
	
	public IProfileService getProfileService() {
		return profileService;
	}
	@Autowired
	public void setProfileService(IProfileService profileService) {
		this.profileService = profileService;
	}
	@RequestMapping("/login")
	public ModelAndView login( @ModelAttribute("user") Account user ,Model model){
		ModelAndView mv=new ModelAndView();
		if(userService.login(user)!=null){
			model.addAttribute("realname", user.getUsername());
			
			//	map.put("ulist", userService.selectUsers());

			mv.setViewName("shop/main.ftl");	

		}else{
			model.addAttribute("error", "�Ƿ��û���");
			mv.setViewName("shop/login.ftl");	
		}

		return mv;		

	}
	@RequestMapping("/lmain")
	public ModelAndView lmain(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("shop/login.ftl");		
		return mv;	

	}

	@RequestMapping("/rmain")
	public ModelAndView rmain(){
		ModelAndView mv=new ModelAndView();

		CategoryExample ce=new CategoryExample();
		ce.createCriteria().andCatidIsNotNull();
		mv.addObject("clist", petService.selectByExample(ce));
		mv.setViewName("shop/register.ftl");		
		return mv;	

	}
	@RequestMapping("/register")
	public ModelAndView register(			
			@Valid @ModelAttribute("user") Account user,
			BindingResult result,
			Map map){
		ModelAndView mv=new ModelAndView();
		if (result.hasErrors()) {
				
			return rmain();
		}
		// Add the saved validationForm to the model
		map.put("user", user);
		if(user.getUsername()!=null){
			//��֤������ظ������Ƿ���ͬ
			if(!user.getPassword().equals(user.getRepassword())){
				map.put("error", "������������������ͬ");
				
				return rmain();
			}
			if(userService.selectByPrimaryKey(user.getUsername())!=null){//���ظ����û�
				map.put("error", "�û��Ѿ���ע�ᣬ����������û�����");
				
				return rmain();
			}
			
			user.getProfile().setAccount(user);//��ֹ����profile��usernameΪ�յ�����
			if(userService.insert(user)>0&&profileService.insert(user.getProfile())>0){
				
				//�ڴ洢profile��
				
				mv.setViewName("shop/login.ftl");	
				map.put("error", "ע��ɹ���");			
				return mv;
			}	
			if(userService.insert(user)<=0){
				map.put("error", "ע��ʧ�ܣ�������ע�ᣡ");
				
				return rmain();	

			}

		}

		return mv;

	}
	


}
