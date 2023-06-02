package com.jjcompany.rentcarProject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarListDto {

	private int cindex;
	private String cbrend;
	private String cclass;
	private String cname;
	private String ccolor;
	private String coil;
	private String ctype;
	private int pindex;	
	private int price;

}
