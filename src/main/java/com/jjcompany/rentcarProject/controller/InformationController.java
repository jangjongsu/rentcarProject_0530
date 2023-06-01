package com.jjcompany.rentcarProject.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InformationController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/insurance_information")
	public String insurance() {
		return "insurance";
	}
}
