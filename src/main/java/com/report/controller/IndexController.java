
package com.report.controller;

import com.report.dao.CompanyDao;
import com.report.dao.CustomerDao;
import com.report.dao.OrderDao;
import com.report.dao.OrderDetailsDao;
import com.report.dao.ProductDao;
import com.report.service.RegisterService;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexController {
    
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private CompanyDao companyDao;
    
    @Autowired
	RegisterService registerService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("orderNo", orderDao.getOrderNo());
        modelMap.addAttribute("invoiceNo", orderDao.getInvoiceNo());
        modelMap.addAttribute("products", productDao.getAllProduct());
        modelMap.addAttribute("customers", customerDao.getAllCustomer());
        modelMap.addAttribute("companys", companyDao.getAllCompany());
        modelMap.addAttribute("em", request.getParameter("em"));
        return "index";
    }
    
    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public String invoice(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("orderNo", orderDao.getOrderNo());
        modelMap.addAttribute("products", productDao.getAllProduct());
        modelMap.addAttribute("customers", customerDao.getAllCustomer());
        modelMap.addAttribute("companys", companyDao.getAllCompany());
        modelMap.addAttribute("em", request.getParameter("em"));
        return "invoice";
    }
    
    @RequestMapping(value = "/generateInvoice", method = RequestMethod.POST)
	public String generateInvoice(@RequestParam("invoice_no") String invoice_no,HttpSession session) throws ClassNotFoundException, IOException, SQLException
	
	{	
		System.out.println("----In generateInvoice Controller----"+invoice_no);		

		 registerService.getInvoice(invoice_no);
		
		return "success"; 
	}
	
	 
    @RequestMapping(value = "/getInvoiceNo", method = RequestMethod.POST)
	public String getInvoiceNo(@RequestParam("invoice_no") String invoice_no,HttpSession session) throws ClassNotFoundException, IOException, SQLException
	
	{	
		System.out.println("----In getInvoiceNo Controller----"+invoice_no);		

		session.setAttribute("invoice_no", invoice_no);

		return "index"; 
	}
	
    @RequestMapping(value = "/generateOrder", method = RequestMethod.POST)
	public String generateOrder(@RequestParam("cid") int cid,@RequestParam("total") String total,
			@RequestParam("orderType") String orderType,@RequestParam("orderDate") Date orderDate,HttpSession session) throws ClassNotFoundException, IOException, SQLException
	
	{	
		System.out.println("----In generateOrder Controller----"+cid+orderDate);		

		 registerService.getOrder(cid,total,orderType,orderDate);
		
		return "success"; 
	}
   
    
    @RequestMapping(value = "/generateOrderDetails", method = RequestMethod.POST)
	public String generateOrderDetails(@RequestParam("oid") int oid,@RequestParam("pid") int pid,@RequestParam("price") double price,@RequestParam("qty") int qty,
			@RequestParam("pdesc") String pdesc,@RequestParam("hsn") int hsn,@RequestParam("tax") String tax,HttpSession session) throws ClassNotFoundException, IOException, SQLException
	
	{	
		System.out.println("----In generateOrderDetails Controller----"+oid);		

		 registerService.getOrderDetails(oid,pid,price,qty,pdesc,hsn,tax);
		
		return "success"; 
	}
    
}
