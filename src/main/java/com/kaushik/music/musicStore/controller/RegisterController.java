package com.kaushik.music.musicStore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kaushik.music.musicStore.model.BillingAddress;
import com.kaushik.music.musicStore.model.Customer;
import com.kaushik.music.musicStore.model.ShippingAddress;
import com.kaushik.music.musicStore.service.CustomerServices;

@Controller
public class RegisterController {

	@Autowired
	private CustomerServices customerServices;
	
	public RegisterController(CustomerServices customerServices) {
		
		this.customerServices = customerServices;
	}

	@GetMapping("/register")
	public String registerCutomer(Model model) {
		Customer customer = new Customer();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		model.addAttribute("customer", customer);

		return "register-customer-page";
	}

	@PostMapping("/register")
	public String registerCutomer(@Valid @ModelAttribute("customer") Customer theCustomer , BindingResult result) {
		if (result.hasErrors()) {

			return "register-customer-page";
		} else {
		customerServices.save(theCustomer);
		}
		return "register-success-page";
	}

}
