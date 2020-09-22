package com.report.restcontroller;

import com.report.dao.CompanyDao;
import com.report.entities.Company;
import com.report.entities.Orders;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/companys")
public class CompanyRestController {

    @Autowired
    private CompanyDao companyDao;
    
    @RequestMapping(value = "/allCompany", method = RequestMethod.GET, headers = "Accept=application/json")
    public List<Company> getAllCompany(){
        return companyDao.getAllCompany();
    }
    @RequestMapping(value = "/company", method = RequestMethod.POST)
    public Company saveOrder(@RequestBody Company company){
    	companyDao.saveCompany(company);
        return company;
    }
}
