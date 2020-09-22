
package com.report.controller;

import com.report.dao.CompanyDao;
import com.report.dao.CustomerDao;
import com.report.dao.OrderDao;
import com.report.dao.OrderDetailsDao;
import com.report.dao.ProductDao;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderController {
    
    @Autowired
    private OrderDao orderDao;
    @Autowired
    private OrderDetailsDao orderDetailsDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private CompanyDao companyDao;
    
    @RequestMapping(value = "/or", method = RequestMethod.GET)
    public String indexPage(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("orderNo", orderDao.getOrderNo());
        modelMap.addAttribute("products", productDao.getAllProduct());
        modelMap.addAttribute("customers", customerDao.getAllCustomer());
        modelMap.addAttribute("companys", companyDao.getAllCompany());
        modelMap.addAttribute("em", request.getParameter("em"));
        return "index";
    }
    
}
