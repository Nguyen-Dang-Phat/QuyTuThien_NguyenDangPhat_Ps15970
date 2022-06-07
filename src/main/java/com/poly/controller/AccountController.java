package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;

	@GetMapping("/account/login")
	public String login() {
		return "account/login";
	}

	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		Account account = dao.findById(username).orElse(null);
		try {
			Account user = dao.getOne(username);
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			} else {
				String uri = session.get("security-uri");
				if (uri != null) {
					return "redirect:" + uri;
				} else {
					if (user.isAdmin()) {
						session.set("username", user.getUsername());
						model.addAttribute("message", "Login successfylly");
						return "redirect:/category/index";
					} else {
						session.set("username", user.getUsername());
						model.addAttribute("message", "Login successfylly");
						return "redirect:/home/index";
					}
				}
			}
		} catch (Exception e) {
			model.addAttribute("message", "Invalid username");
		}
		return "account/login";
	}
	
	// xét quyền truy cập để hiển thị lại hệ thống menu
	@GetMapping("/logout/{username}")
	public String logout(Model model, @PathVariable ("username") String username) {
		Account ac = dao.getOne(username);
		if(ac.isAdmin()) {
			session.set("username", ac.getUsername());
			model.addAttribute("message", "Login successfylly");
			return "redirect:/category/index";
		}
		else {
			session.set("username", ac.getUsername());
			model.addAttribute("message", "Login successfylly");
			return "redirect:/home/index";
		}
	}

}
