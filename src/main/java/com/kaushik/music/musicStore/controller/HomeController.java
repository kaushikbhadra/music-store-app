package com.kaushik.music.musicStore.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

//import com.kaushik.music.musicStore.dao.ProductDAO;
import com.kaushik.music.musicStore.model.Product;
import com.kaushik.music.musicStore.service.ProductServices;

@Controller
@RequestMapping("/store")
public class HomeController {

	private Path path;

	// ProductDAO productDAO = new ProductDAO();
	private ProductServices prodServices;

	@Autowired
	public HomeController(ProductServices theProdServices) {
		prodServices = theProdServices;
	}

	@GetMapping("/musicstore")
	public String showStore() {
		return "/home";
	}

	@GetMapping("/product-lists")
	public String getProduct(Model model) {
//		List<Product> products = productDAO.getProductList();
		List<Product> products = prodServices.findAll();
		model.addAttribute("products", products);
		return "/product-items";
	}

	@GetMapping("/product-lists/product-show/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
//		Product product = productDAO.getProductById(productId);
		Product product = prodServices.findById(productId);
		model.addAttribute(product);
		return "product-view";
	}

//	

	@GetMapping("/admin")
	public String adminPage() {
		return "admin-page";
	}

	@GetMapping("/admin/product-inventory")
	public String productInventory(Model model) {
		List<Product> products = prodServices.findAll();
		model.addAttribute("products", products);
		return "product-inventory-page";
	}

	@GetMapping("/admin/product-inventory/add-product")
	public String addProduct(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "add-product-page";
	}

	@PostMapping("/admin/product-inventory/add-product")
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {

		try {

			if (result.hasErrors()) {
				
				return "add-product-page";
			} else {

				prodServices.save(product);
				MultipartFile productImage = product.getProductImage();

				File file = new ClassPathResource("static/img/").getFile();
				path = Paths.get(file.getAbsolutePath() + File.separator + product.getProductId() + ".jpg");

				if (!productImage.equals(null) && !productImage.isEmpty()) {
					Files.copy(productImage.getInputStream(), path);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Product image saving failed: " + e);
		}

		return "redirect:/store/admin/product-inventory";
	}

	@GetMapping("/admin/product-inventory/edit-product/{productId}")
	public String editProduct(@PathVariable int productId, Model model) {

		Product product = prodServices.findById(productId);
		model.addAttribute("product", product);

		return "edit-product-page";
	}

	@PostMapping("/admin/product-inventory/edit-product")
	public String editProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {

		try {

			if (result.hasErrors()) {
				return "edit-product-page";
			}
			MultipartFile productImage = product.getProductImage();

			File file = new ClassPathResource("static/img/").getFile();
			path = Paths.get(file.getAbsolutePath() + File.separator + product.getProductId() + ".jpg");

			if (!productImage.equals(null) && !productImage.isEmpty()) {
				Files.copy(productImage.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
			}
			prodServices.save(product);

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Product image saving failed: " + e);
		}
		return "redirect:/store/admin/product-inventory";
	}

	@GetMapping("/admin/product-inventory/delete-product/{productId}")
	public String deleteProduct(@PathVariable int productId) {
		try {

			File file = new ClassPathResource("static/img/").getFile();
			path = Paths.get(file.getAbsolutePath() + File.separator + productId + ".jpg");

			if (Files.exists(path)) {
				Files.delete(path);
			}
			prodServices.deleteById(productId);

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Product image delete failed: " + e);
		}

		return "redirect:/store/admin/product-inventory";

	}

}
