package com.report.controller;

import com.report.dao.ProductDao;
import com.report.entities.Product;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

    @Autowired
    ProductDao productDao;

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String getAllProduct(ModelMap modelMap, HttpServletRequest request) {
        modelMap.addAttribute("products", productDao.getAllProduct());
        modelMap.addAttribute("sm", request.getParameter("sm"));
        modelMap.addAttribute("em", request.getParameter("em"));
        return "product";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String saveProduct(ModelMap modelMap, HttpServletRequest request) {
        Product product = new Product();
        product.setPname(request.getParameter("pname"));
        product.setPdesc(request.getParameter("pdesc"));
        product.setHsn(Integer.parseInt(request.getParameter("hsn")));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setQty(Integer.parseInt(request.getParameter("qty")));
        product.setUnit(request.getParameter("unit"));
        product.setTax(request.getParameter("tax"));
        product.setCess(Integer.parseInt(request.getParameter("cess")));
        product.setDnote(request.getParameter("dnote"));
    	product.setModepay(request.getParameter("modepay"));
    	product.setSuppliers(request.getParameter("suppliers"));
    	product.setOtherref(request.getParameter("otherref"));
    	product.setAdate(request.getParameter("adate"));
    	product.setDesdoc(request.getParameter("desdoc"));
    	product.setDeliverydate(request.getParameter("deliverydate"));
    	product.setDesthrough(request.getParameter("desthrough"));
    	product.setDelivery(request.getParameter("delivery"));
    	product.setDest(request.getParameter("dest"));

        boolean status = productDao.saveProduct(product);
        if (status) {
            modelMap.addAttribute("sm", "Product Info Saved Successfully");
        } else {
            modelMap.addAttribute("em", "Product Info Not Saved");
        }
        return "redirect:/product";
    }

    @RequestMapping(value = "/editProduct/{id}", method = RequestMethod.GET)
    public String editProduct(@PathVariable("id") String id, ModelMap modelMap) {
        Product product = productDao.getProduct(Integer.parseInt(id));
        modelMap.addAttribute("product", product);
        modelMap.addAttribute("products", productDao.getAllProduct());
        return "product";
    }

    @RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
    public String updateProduct(ModelMap modelMap, HttpServletRequest request) {
        Product product = new Product();
        product.setPid(Integer.parseInt(request.getParameter("pid")));
        product.setPname(request.getParameter("pname"));
        product.setPdesc(request.getParameter("pdesc"));
        product.setHsn(Integer.parseInt(request.getParameter("hsn")));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setQty(Integer.parseInt(request.getParameter("qty")));
        product.setUnit(request.getParameter("unit"));
        product.setTax(request.getParameter("tax"));
        product.setCess(Integer.parseInt(request.getParameter("cess")));
        product.setDnote(request.getParameter("dnote"));
    	product.setModepay(request.getParameter("modepay"));
    	product.setSuppliers(request.getParameter("suppliers"));
    	product.setOtherref(request.getParameter("otherref"));
    	product.setAdate(request.getParameter("adate"));
    	product.setDesdoc(request.getParameter("desdoc"));
    	product.setDeliverydate(request.getParameter("deliverydate"));
    	product.setDesthrough(request.getParameter("desthrough"));
    	product.setDelivery(request.getParameter("delivery"));
    	product.setDest(request.getParameter("dest"));


        boolean status = productDao.updateProduct(product);
        if (status) {
            modelMap.addAttribute("sm", "Product Info Update Successfully");
        } else {
            modelMap.addAttribute("em", "Product Info Not Update");
        }
        return "redirect:/product";
    }

    @RequestMapping(value = "/deleteProduct/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") String id, ModelMap modelMap) {
        boolean status = productDao.deleteProduct(Integer.parseInt(id));
        if (status) {
            modelMap.addAttribute("sm", "Product Info Deleted Successfully");
        } else {
            modelMap.addAttribute("em", "Product Info Not Delete");
        }
        return "redirect:/product";
    }
    
}
