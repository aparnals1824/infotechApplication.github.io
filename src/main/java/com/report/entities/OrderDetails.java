package com.report.entities;

public class OrderDetails {

    private int odid;
    private int oid;
    private int pid;
    private double price;
    private int qty;
    private String tax;
    private String pdesc;
    private int hsn;
    private String cess;

    
    

    public OrderDetails() {
    }

    public OrderDetails( int odid, int oid, int pid, double price, int qty, String pdesc, int hsn, String tax, String cess) {
        
        this.odid = odid;
        this.oid = oid;
        this.pid = pid;
        this.price = price;
        this.qty = qty;
        this.pdesc = pdesc;
        this.hsn=hsn;
        this.tax= tax;
        this.cess= cess;
    }

   

    public int getOdid() {
		return odid;
	}

	public void setOdid(int odid) {
		this.odid = odid;
	}

	public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public String getTax() {
		return tax;
	}

	public void setTax(String tax) {
		this.tax = tax;
	}

	public String getPdesc() {
		return pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public int getHsn() {
		return hsn;
	}

	public void setHsn(int hsn) {
		this.hsn = hsn;
	}
	

	public String getCess() {
		return cess;
	}

	public void setCess(String cess) {
		this.cess = cess;
	}

	@Override
    public String toString() {
        return "OrderDetails{" + "odid=" + odid + ", oid=" + oid + ", pid=" + pid + ", price=" + price + ", qty=" + qty + ", pdesc=" + pdesc + ", hsn=" + hsn + ", tax=" + tax + ", cess=" + cess + '}';
    }

}
