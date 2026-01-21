
package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrHomeController {
	int count;

	public UsrHomeController() {
		count = 0;
	}

	@RequestMapping("/usr/home/setCountValue")
	@ResponseBody
	public String setCountValue(int value) {
		this.count = value;
		return "count 값" + value + "(으)로 초기화";
	}

	@RequestMapping("/usr/home/setCount")
	@ResponseBody
	public String setCount_zero() {
		count = 0;
		return "count 값 0으로 초기화";
	}

	@RequestMapping("/usr/home/getCount")
	@ResponseBody
	public int showMain4() {
		return count++;
	}

}