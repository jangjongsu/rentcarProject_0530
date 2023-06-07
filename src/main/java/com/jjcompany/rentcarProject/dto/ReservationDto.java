package com.jjcompany.rentcarProject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationDto {
	
	private int rtnum;
	private String rid;
	private int cindex;
	private String rvdate;
	private String rtdate;
	private String retrurndate;
	private String rpdate;
	private int rtprice;
	

}
