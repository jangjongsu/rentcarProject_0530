package com.jjcompany.rentcarProject.dao;

import java.util.Vector;

import com.jjcompany.rentcarProject.dto.CarListDto;
import com.jjcompany.rentcarProject.dto.MemberDto;

public interface IDao {
	
	//회원관리
	public int joinDao(String rid, String rpw, String rname, String rmobile, String remail); 
	public int checkIdDao(String rid);
	public int loginOkDao(String rid, String rpw);
	public MemberDto showInfoDao(String rid);
	public int modifyOkDao(String rid, String rpw, String rname, String rmobile, String remail);
	
	
	//차량관리
	public int countCarListDao();
	public Vector<CarListDto> AllCarListDao();
	public int countCarTypeListDao(String cclass);
	public Vector<CarListDto> CarListDao(String cclass);
	public int countCarBrendListDao(String cbrend);
	public Vector<CarListDto> CarBrendListDao(String cbrend);
}
