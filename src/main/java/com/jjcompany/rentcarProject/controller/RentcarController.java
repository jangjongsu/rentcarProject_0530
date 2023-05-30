package com.jjcompany.rentcarProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RentcarController {
	
	@RequestMapping(value = "/header")
	public String test() {
		return"header";
	}
	
	@RequestMapping(value = "/footer")
	public String test1() {
		return"footer";
	}
}
