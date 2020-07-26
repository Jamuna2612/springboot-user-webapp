package com.apex.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.apex.user.dto.UserInfoDto;
import com.apex.user.service.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/entryForm.do")
	public String entryForm(Model model) {
		model.addAttribute("userinfo", new UserInfoDto());
		return "personalInfo";
	}

	@RequestMapping(value = "/contactInfo.do")
	public String personalInfo(@ModelAttribute("userinfo") UserInfoDto userinfo, Model model) {
		model.addAttribute("userinfo", userinfo);
		return "contactInfo";
	}

	@RequestMapping(value = "/bankInfo.do")
	public String bankInfo(@ModelAttribute("userinfo") UserInfoDto userinfo, Model model) {
		model.addAttribute("userinfo", userinfo);
		return "bankInfo";
	}

	@RequestMapping(value = "/saveUser.do")
	public String saveUser(@ModelAttribute("userinfo") UserInfoDto userinfo, Model model) {
		model.addAttribute("userinfo", userinfo);
		userService.saveUser(userinfo);
		return "bankregistration";
	}

	@RequestMapping(value = "/entryDeleteUser.do")
	public String entrydeleteUser() {
		return "deleteUser";
	}

	@RequestMapping(value = "/deleteUser.do")
	public String deleteUser(@RequestParam("del") int id) {
		userService.deleteUser(id);
		return "redirect:/entryForm.do";
	}

	@RequestMapping(value = "/modifyUser.do")
	public String modifyUser(@RequestParam("mod") int id, Model model) {

		UserInfoDto userinfo = userService.getUser(id);
		model.addAttribute("userinfo", userinfo);
		return "personalInfo";
	}

	@RequestMapping(value = "/entryModifyUser.do")
	public String entryModifyUser() {
		return "modifyUser";
	}

	@RequestMapping(value = "/entryViewUser.do")
	public String entryViewUser(Model model) {
		model.addAttribute("userinfo", new UserInfoDto());
		return "viewUser";
	}

	@RequestMapping(value = "/viewUser.do")
	public String viewUser(@RequestParam("view") int id, Model model) {
		UserInfoDto user = userService.getUser(id);
		model.addAttribute("userinfo", user);
		return "showUser";
	}

	@RequestMapping(value = "/viewAll.do")
	public String viewAll(Model model) {
		List<UserInfoDto> listofUser = userService.getAllUsers();
		model.addAttribute("listuser", listofUser);
		return "listUser";
	}

	
}
