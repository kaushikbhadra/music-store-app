package com.kaushik.music.musicStore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kaushik.music.musicStore.model.BillingAddress;
import com.kaushik.music.musicStore.model.Customer;
import com.kaushik.music.musicStore.model.ShippingAddress;

@Controller
public class RegisterController {
	
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

}
