package com.oned.hello.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/")
	public String welcome() {
		return "Welcome to world of programming ! Current time is : " + new java.util.Date();
	}
	
	/*
	 * public String index(final Model model) { model.addAttribute("title",
	 * "Docker + Spring Boot"); model.addAttribute("msg",
	 * "Welcome to the docker container!"); return "index"; }
	 */

}
