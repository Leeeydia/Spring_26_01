package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrHomeController {
	
	@RequestMapping("/usr/home/getDouble")
	@ResponseBody
	public double getDouble() {
		return 3.14;
	}
	
	
	@RequestMapping("/usr/home/getBoolean")
	@ResponseBody
	public Boolean getBoolean() {
		return true;
	}
	
	
	@RequestMapping("/usr/home/getString")
	@ResponseBody
	public String getString() {
		return "abc";
	}

	@RequestMapping("/usr/home/getInt")
	@ResponseBody
	public int getInt() {
		return 100;
	}

}