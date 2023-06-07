package com.jjcompany.rentcarProject.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping(value = "/carListSearch")
	public String catTotalList (Model model, HttpServletRequest request) {
		
		String rtdate = request.getParameter("rtdate");
		String returndate = request.getParameter("returndate");
		String searchOption	 = request.getParameter("searchOption");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		
		if(searchOption.equals("allcar")) {
			List<CarDto> dtos = dao.carListTotalDao(rtdate, returndate);
			model.addAttribute("dtos", dtos);
		}else {
			List<CarDto> dtos = dao.carListClassDao(rtdate, returndate, searchOption);
			model.addAttribute("dtos", dtos);
		}
			model.addAttribute("returndate", returndate);
			model.addAttribute("rtdate", rtdate);
			
		
		return"carList";
	}
	@RequestMapping(value = "/carReservation")
	public String carReservation (Model model, HttpServletRequest request) {
		
		String cindex = request.getParameter("cindex");
		String rtdate = request.getParameter("rtdate");
		String returndate = request.getParameter("returndate");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		CarDto dto = dao.carinfoDao(cindex);
		
		model.addAttribute("dto", dto);
		model.addAttribute("rtdate",rtdate );
		model.addAttribute("returndate", returndate);
		
		return"carReservation";
	}
	@RequestMapping(value = "/carReservationOk")
	public String carReservationOk (Model model, HttpServletRequest request) throws ParseException{
		
		String rid = request.getParameter("rid");
		int rtPrice = Integer.parseInt(request.getParameter("rtPrice"));
		String cindex = request.getParameter("cindex");
		String rtdate = request.getParameter("rtdate");
		String returndate = request.getParameter("returndate");
		
		Date formatRtdate = new SimpleDateFormat("yyyy-MM-dd").parse(rtdate);
		Date formatReturnDate = new SimpleDateFormat("yyyy-MM-dd").parse(returndate);
		
		long diffdays = ((formatReturnDate.getTime()-formatRtdate.getTime()) / 1000 )/ (24*60*60);
		int totalPrice = rtPrice * (int)diffdays;
		String rpdate = rtdate+"~"+returndate;
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.carRentDao(rid, cindex, rtdate, returndate, rpdate,  totalPrice);
		
		
		return"/";
	}

}
