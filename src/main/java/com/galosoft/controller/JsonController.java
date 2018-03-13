package com.galosoft.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.galosoft.dao.EmployeeDao;
import com.galosoft.dao.ProductDao;
import com.galosoft.model.Employee;
import com.galosoft.model.Product;

@Controller
public class JsonController {
	
	@Autowired
	private ProductDao productDao;
	
	@ResponseBody
	@RequestMapping(value = "/testJson", method = RequestMethod.GET)
	public List<Product> getAllProducts() {
		List<Product> products = productDao.getAllProducts();
		return products;
	}
	
	@ResponseBody
	@RequestMapping(value = "/testJson/{productId}", method = RequestMethod.GET)
	public Product getProductById(@PathVariable String productId) {
		Product product = productDao.getProductById(productId);
		return product;
	}
	
	@ResponseBody
	@RequestMapping(value = "/testJson", method = RequestMethod.POST)
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}

}
