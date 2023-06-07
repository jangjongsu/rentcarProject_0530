package com.jjcompany.rentcarProject.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jjcompany.rentcarProject.dao.IDao;
import com.jjcompany.rentcarProject.dto.CarDto;

@Controller
public class CarController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/carList")
	public String catList (Model model ) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		List<CarDto> dtos = dao.carListTotalDao();
		
		model.addAttribute("dtos", dtos);
		
		return"carList";
	}

}
