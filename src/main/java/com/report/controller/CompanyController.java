package com.report.controller;

import com.report.dao.CompanyDao;
import com.report.entities.Company;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyController {

    @Autowired
    private CompanyDao companyDao;

    @RequestMapping(value = "/company", method = RequestMethod.GET)
    public String companyPage(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));
        modelMap.addAttribute("companys", companyDao.getAllCompany());
        return "company";
    }

    @RequestMapping(value = "/addCompany", method = RequestMethod.POST)
    public String saveCompany(ModelMap modelMap, HttpServletRequest request) {
    	Company company = new Company();
    	company.setCompname(request.getParameter("compname"));
    	company.setCompadd(request.getParameter("compadd"));
    	company.setCompmail(request.getParameter("compmail"));
    	company.setCompphone(request.getParameter("compphone"));
    	company.setCompaccount(request.getParameter("compaccount"));

        boolean status = companyDao.saveCompany(company);
        if (status) {
            modelMap.addAttribute("sm", "Company Info Saved Successfully");
        } else {
            modelMap.addAttribute("em", "Company Info Not Saved");
        }
        return "redirect:/company";
    }

    @RequestMapping(value = "/editCompany/{id}", method = RequestMethod.GET)
    public String editCompany(@PathVariable("id") String id, ModelMap modelMap) {
    	Company company = companyDao.getCompany(Integer.parseInt(id));
        modelMap.addAttribute("company", company);
        modelMap.addAttribute("companys", companyDao.getAllCompany());
        return "company";
    }

    @RequestMapping(value = "/updateCompany", method = RequestMethod.POST)
    public String updateCompany(ModelMap modelMap, HttpServletRequest request) {
    	Company company = new Company();
    	company.setCompid(Integer.parseInt(request.getParameter("compid")));
    	company.setCompname(request.getParameter("compname"));
    	company.setCompadd(request.getParameter("compadd"));
    	company.setCompmail(request.getParameter("compmail"));
    	company.setCompphone(request.getParameter("compphone"));
    	company.setCompaccount(request.getParameter("compaccount"));


        boolean status = companyDao.updateCompany(company);
        if (status) {
            modelMap.addAttribute("sm", "Company Info Update Successfully");
        } else {
            modelMap.addAttribute("em", "Company Info Not Update");
        }
        return "redirect:/company";
    }

    @RequestMapping(value = "/deleteCompany/{id}", method = RequestMethod.GET)
    public String deleteCompany(@PathVariable("id") String id, ModelMap modelMap) {
        boolean status = companyDao.deleteCompany(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "Company Info Deleted Successfully");
        } else {
            modelMap.addAttribute("em", "Company Info Not Deleted");
        }
        return "redirect:/company";
    }

}
