package com.kaushik.music.musicStore.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kaushik.music.musicStore.model.Product;
import com.kaushik.music.musicStore.service.ProductServices;

@Controller
@RequestMapping("/product")
public class ProductController {

	// ProductDAO productDAO = new ProductDAO();
	private ProductServices prodServices;

	@Autowired
	public ProductController(ProductServices theProdServices) {
		prodServices = theProdServices;
	}

	@GetMapping("/product-lists/all")
	public String getProduct(Model model) {
//		List<Product> products = productDAO.getProductList();
		List<Product> products = prodServices.findAll();
		model.addAttribute("products", products);
		return "product-items";
	}

	@GetMapping("/product-lists/product-show/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
//		Product product = productDAO.getProductById(productId);
		Product product = prodServices.findById(productId);
		model.addAttribute(product);
		return "product-view";
	}
	
	@GetMapping("/product-lists")
	public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
        List<Product> products = prodServices.findAll();
        model.addAttribute("products", products);
        model.addAttribute("searchCondition", searchCondition);

        return "product-items";
    }
	

}
