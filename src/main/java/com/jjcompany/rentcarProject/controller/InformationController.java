package com.jjcompany.rentcarProject.controller;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

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
		int count = dao.countCarListDao();
		Vector<CarListDto> dtos = dao.AllCarListDao();
		model.addAttribute("count", count);
		model.addAttribute("carListDto", dtos);
		
		return "carList";
	}
	
	@RequestMapping(value = "/situation_form")
	public String situation() {
		
		return "situation";
	}
	
	@RequestMapping(value = "/carList_type")
	public String carList_type(Model model, HttpServletRequest request) {
		
		String type = request.getParameter("cclass");
		if(type.equals("수입")) {
			IDao dao = sqlSession.getMapper(IDao.class);
			int count = dao.countCarBrendListDao(type);
			Vector<CarListDto> dtos = dao.CarBrendListDao(type);
			model.addAttribute("count", count);
			model.addAttribute("carListDto", dtos);
			
			return "carList";
		} else {
			IDao dao = sqlSession.getMapper(IDao.class);
			int count = dao.countCarTypeListDao(type);
			Vector<CarListDto> dtos = dao.CarListDao(type);
			model.addAttribute("count", count);
			model.addAttribute("carListDto", dtos);
			
			return "carList";
		}		
	}
	
	@RequestMapping(value = "/carDetail_form")
	public String carDetail(Model model, HttpServletRequest request) {
		
		int cindex = Integer.parseInt(request.getParameter("cindex"));
		IDao dao = sqlSession.getMapper(IDao.class);
		CarListDto cdto = dao.IndexCarDao(cindex);
		Vector<CarListDto> dto = dao.BrendListDao();
		model.addAttribute("cdto", cdto);
		model.addAttribute("brendlist", dto);
		
		return "carDetail";
	}
	
	@RequestMapping(value = "/carAdd_form")
	public String carAdd() {
		return "carAdd";
	}
	
	@RequestMapping(value = "/carListUpdate")
	public String carListUpdate(HttpServletRequest request) {
		
		int cindex = Integer.parseInt(request.getParameter("cindex"));
		String cbrend = request.getParameter("cbrend");
		String cclass = request.getParameter("cclass");
		String cname = request.getParameter("updatecname");
		String ccolor = request.getParameter("updateccolor");
		String coil = request.getParameter("coil");
		String ctype = request.getParameter("ctype");
		int price = Integer.parseInt(request.getParameter("pricename"));
		String cimg = request.getParameter("updatecimg");
		String cnote = request.getParameter("cnote");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.CarListUpdateDao(cindex, cbrend, cclass, cname, ccolor, coil, ctype, price, cimg, cnote);

		return "redirect:carList_form";
	}
	
	@RequestMapping(value = "/carListDelete")
	public String carListDelete(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.CarListDeleteDao(Integer.parseInt(request.getParameter("cindex")));
		
		return "redirect:carList_form";
	}
	
	@RequestMapping(value = "/carADD")
	public String carADD(HttpServletRequest request) {
		
		String cbrend = request.getParameter("cbrend");
		String cclass = request.getParameter("cclass");
		String cname = request.getParameter("addcname");
		String ccolor = request.getParameter("addccolor");
		String coil = request.getParameter("coil");
		String ctype = request.getParameter("ctype");
		int price = Integer.parseInt(request.getParameter("pricename"));
		String cimg = request.getParameter("addcimg");
		String cnote = request.getParameter("cnote");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.AddNewCarDao(cbrend, cclass, cname, ccolor, coil, ctype, price, cimg, cnote);

		return "redirect:carList_form";
	}
	
	@RequestMapping(value = "/carListSearch")
	public String carListSearch(HttpServletRequest request, Model model) {
		
		String rtdate = request.getParameter("rtdate");
		String returndate = request.getParameter("returndate");
		String param = request.getParameter("param");
		
		model.addAttribute("dto1", rtdate);
		model.addAttribute("dto2", returndate);
		model.addAttribute("dto3", param);
		
		return "test";
	}
	
}
