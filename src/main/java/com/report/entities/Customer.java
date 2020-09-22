package com.report.entities;

public class Customer {

    private int cid;
    private String cname;
    private String phone;
    private String cadd;
    
    public Customer() {
    }

    public Customer(int cid, String cname, String phone,String cadd) {
        this.cid = cid;
        this.cname = cname;
        this.phone = phone;
        this.cadd = cadd; 
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCadd() {
		return cadd;
	}

	public void setCadd(String cadd) {
		this.cadd = cadd;
	}

	@Override
    public String toString() {
        return "Customer{" + "cid=" + cid + ", cname=" + cname + ", phone=" + phone + ", cadd=" + cadd + '}';
    }

}
