package com.report.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.report.db.BaseDao;
import com.report.entities.Invoice;
import com.report.entities.Order;
import com.report.entities.OrderDetail;

@Service
public class RegisterService {

	@Autowired
	BaseDao dao;
	

	@Transactional
	public String getInvoice(String invoice_no)
			

		{
			
			try{
			
		
			Invoice invoice=new Invoice();
			
			invoice.setInvoice_no(invoice_no);
			
			dao.create(invoice);
			
			System.out.println(" inserted in sent table ");
			
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			return invoice_no;
			
			}
	
	@Transactional
	public void getOrder(int cid,String total,String orderType,Date orderDate)
			

		{
			
			try{
			
		
			Order order=new Order();
			
			order.setCid(cid);
			order.setTotal(total);
			order.setOrderType(orderType);
			order.setOrderDate(orderDate);
			
			dao.create(order);
			
			System.out.println(" inserted in sent table ");
			
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			
			
			}
	
	@Transactional
	public void getOrderDetails(int oid,int pid,double price,int qty,String pdesc,int hsn,String tax)

	{
		
		try{
		
	
		OrderDetail orderdetail=new OrderDetail();
		
		orderdetail.setOid(oid);
		orderdetail.setPid(pid);
		orderdetail.setPrice(price);
		orderdetail.setQty(qty);
		orderdetail.setPdesc(pdesc);
		orderdetail.setHsn(hsn);
		orderdetail.setTax(tax);
		
		
		dao.create(orderdetail);
		
		System.out.println(" inserted in sent table ");
		
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		
		
		}

}
