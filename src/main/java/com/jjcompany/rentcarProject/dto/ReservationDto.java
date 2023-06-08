<<<<<<< HEAD
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
	private long rtprice;
	
	private CarDto carDto;
	

}
=======
package com.jjcompany.rentcarProject.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReservationDto {
	
	private int rtnum;
	private String cbrend;
	private int cindex;
	private String cclass;
	private String cname;
	private String rvdate;
	private String rtdate;
	private String returndate;
	private String rpdate;
}
>>>>>>> refs/heads/rlagus
