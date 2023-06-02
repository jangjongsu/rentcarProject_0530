package com.jjcompany.rentcarProject.controller;

import java.util.List;
import java.util.Vector;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jjcompany.rentcarProject.dao.IDao;
import com.jjcompany.rentcarProject.dto.CarListDto;

@Controller
public class InformationController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/information_form")
	public String information() {
		return "information";
	}
	
	@RequestMapping(value = "/insurance_form")
	public String insurance() {
		return "insurance";
	}
	
	@RequestMapping(value = "/carList_form")
	public String carList(Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		Vector<CarListDto> dtos = dao.AllCarListDao();
		model.addAttribute("carListDto", dtos);
		
		return "carList";
	}
}
