package com.report.entities;

public class Company {

    private int compid;
    private String compname;
    private String compadd;
    private String compmail;
    private String compphone;
    private String compaccount;
    
     
    
    public Company() {
    }

    public Company(int compid, String compname, String compadd,String compmail,String compphone,String compaccount) {
        this.compid = compid;
        this.compname = compname;
        this.compadd = compadd;
        this.compmail = compmail;
        this.compphone=compphone;
        this.compaccount=compaccount;
    }

  
	public int getCompid() {
		return compid;
	}

	public void setCompid(int compid) {
		this.compid = compid;
	}

	public String getCompname() {
		return compname;
	}

	public void setCompname(String compname) {
		this.compname = compname;
	}

	public String getCompadd() {
		return compadd;
	}

	public void setCompadd(String compadd) {
		this.compadd = compadd;
	}

	public String getCompmail() {
		return compmail;
	}

	public void setCompmail(String compmail) {
		this.compmail = compmail;
	}

	public String getCompphone() {
		return compphone;
	}

	public void setCompphone(String compphone) {
		this.compphone = compphone;
	}

	public String getCompaccount() {
		return compaccount;
	}

	public void setCompaccount(String compaccount) {
		this.compaccount = compaccount;
	}

	@Override 
	
    public String toString() {
        return "Company{" + "compid=" + compid + ", compname=" + compname + ", compadd=" + compadd + ", compmail=" + compmail + ", compphone=" + compphone + ", compaccount=" + compaccount + '}';
    }

}
