package com.report.entities;

public class Product {

    private int pid;
    private String pname;
    private double price;
    private int qty;
    private String unit;
    private String tax;
    private String pdesc;
    private int hsn;
    private int cess;
    private String  dnote ;
	 private String  modepay ;
	 private String suppliers ;
	 private String  otherref ;
	 private String adate ;
	  private String  desdoc ;
	  private String  deliverydate;
	  private String  desthrough ;
	  private String delivery ;
	  private String dest ;


    public Product() {
    }

    public Product(int pid, String pname,String pdesc,int hsn, double price, int qty,String unit,String tax,int cess,
    		String dnote,String modepay,String suppliers,String otherref,String adate,String desdoc,String deliverydate,String desthrough,String delivery,String dest) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.qty = qty;
        this.unit=unit;
        this.tax=tax;
        this.pdesc=pdesc;
        this.hsn=hsn;
        this.cess=cess;
        this.dnote = dnote;
        this.modepay = modepay;
        this.suppliers = suppliers;
        this.otherref=otherref;
        this.adate=adate;
        this.desdoc=desdoc;
        this.deliverydate=deliverydate;
        this.desthrough=desthrough;
        this.delivery=delivery;
        this.dest=dest;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
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
    

    public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
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

	public int getCess() {
		return cess;
	}

	public void setCess(int cess) {
		this.cess = cess;
	}
	public String getDnote() {
		return dnote;
	}

	public void setDnote(String dnote) {
		this.dnote = dnote;
	}

	public String getModepay() {
		return modepay;
	}

	public void setModepay(String modepay) {
		this.modepay = modepay;
	}

	public String getSuppliers() {
		return suppliers;
	}

	public void setSuppliers(String suppliers) {
		this.suppliers = suppliers;
	}

	public String getOtherref() {
		return otherref;
	}

	public void setOtherref(String otherref) {
		this.otherref = otherref;
	}

	
	public String getDesdoc() {
		return desdoc;
	}

	public void setDesdoc(String desdoc) {
		this.desdoc = desdoc;
	}

	
	public String getDesthrough() {
		return desthrough;
	}

	
	public String getAdate() {
		return adate;
	}

	public void setAdate(String adate) {
		this.adate = adate;
	}

	public String getDeliverydate() {
		return deliverydate;
	}

	public void setDeliverydate(String deliverydate) {
		this.deliverydate = deliverydate;
	}

	public void setDesthrough(String desthrough) {
		this.desthrough = desthrough;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getDest() {
		return dest;
	}

	public void setDest(String dest) {
		this.dest = dest;
	}


	@Override
    public String toString() {
        return "Product{" + "pid=" + pid + ", pname=" + pname + ",pdesc=" + pdesc + ",hsn=" + hsn + ", price=" + price + ", qty=" + qty + ", unit=" + unit + ", tax=" + tax + ",cess=" + cess +", dnote=" + dnote + ",modepay=" + modepay + ",suppliers=" + suppliers + ", otherref=" + otherref + ", adate=" + adate + ", desdoc=" + desdoc + ",deliverydate=" + deliverydate + ",desthrough=" + desthrough + ",delivery=" + delivery + ",dest=" + dest +  '}';
    }

}
