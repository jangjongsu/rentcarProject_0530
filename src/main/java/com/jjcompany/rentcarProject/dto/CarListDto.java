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
	private String cimg;
	private String cnote;
	
	public int getCindex() {
		return cindex;
	}
	public void setCindex(int cindex) {
		this.cindex = cindex;
	}
	public String getCbrend() {
		return cbrend;
	}
	public void setCbrend(String cbrend) {
		this.cbrend = cbrend;
	}
	public String getCclass() {
		return cclass;
	}
	public void setCclass(String cclass) {
		this.cclass = cclass;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCcolor() {
		return ccolor;
	}
	public void setCcolor(String ccolor) {
		this.ccolor = ccolor;
	}
	public String getCoil() {
		return coil;
	}
	public void setCoil(String coil) {
		this.coil = coil;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public int getPindex() {
		return pindex;
	}
	public void setPindex(int pindex) {
		this.pindex = pindex;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCimg() {
		return cimg;
	}
	public void setCimg(String cimg) {
		this.cimg = cimg;
	}
	public String getCnote() {
		return cnote;
	}
	public void setCnote(String cnote) {
		this.cnote = cnote;
	}	
}
