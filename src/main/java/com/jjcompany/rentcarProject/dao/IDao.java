package com.jjcompany.rentcarProject.dao;

import com.jjcompany.rentcarProject.dto.MemberDto;

public interface IDao {
	
	//회원관리
	public int joinDao(String rid, String rpw, String rname, String rmobile, String remail); 
	public int checkIdDao(String rid);
	public int loginOkDao(String rid, String rpw);
	public MemberDto showInfoDao(String rid);
	public int modifyOkDao(String rid, String rpw, String rname, String rmobile, String remail);

}
