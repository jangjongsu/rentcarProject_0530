package com.jjcompany.rentcarProject.controller;

import java.util.Vector;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jjcompany.rentcarProject.dao.IDao;
import com.jjcompany.rentcarProject.dto.ReservationDto;

@Controller
public class AdminController {
	
	@Autowired
	private SqlSession sqlsession;

	@RequestMapping(value = "/situation_form")
	public String situation(Model model) {
		
		IDao dao = sqlsession.getMapper(IDao.class);
		Vector<ReservationDto> dtos = dao.AdminReservationListDao();
		model.addAttribute("dtos", dtos);
		
		return "situation";
	}
}
