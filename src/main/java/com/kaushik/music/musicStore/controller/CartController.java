package com.kaushik.music.musicStore.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kaushik.music.musicStore.model.Customer;
import com.kaushik.music.musicStore.service.CustomerServices;



@Controller
@RequestMapping("/customer/cart")
public class CartController {

	@Autowired
	private CustomerServices customerServices;
	public CartController() {
	}

	@RequestMapping
	public String getCart(@AuthenticationPrincipal UserDetails activeUser) {
		
		Customer customer = customerServices.getCustomerByUsername(activeUser.getUsername());
		int cartId = customer.getCart().getCartId();
		return "redirect:/customer/cart/"+cartId;
	}
	
	@GetMapping("/{cartId}")
	public String getCartRedirect(@PathVariable(value = "cartId") int cartId, Model model) {
		model.addAttribute("cartId", cartId);
		return "cart";
	}
	
	
}
