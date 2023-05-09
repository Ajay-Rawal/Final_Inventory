package com.valtech.model;

public class Warehouse {
	
	private int Wid;
	private String Wname;
	private String Waddress;
	
	public Warehouse() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Warehouse(int wid, String wname, String waddress) {
		super();
		Wid = wid;
		Wname = wname;
		Waddress = waddress;
	}

	public int getWid() {
		return Wid;
	}

	public void setWid(int wid) {
		Wid = wid;
	}

	public String getWname() {
		return Wname;
	}

	public void setWname(String wname) {
		Wname = wname;
	}

	public String getWaddress() {
		return Waddress;
	}

	public void setWaddress(String waddress) {
		Waddress = waddress;
	}

	@Override
	public String toString() {
		return "Warehouse [Wid=" + Wid + ", Wname=" + Wname + ", Waddress=" + Waddress + "]";
	}
	
	

}
