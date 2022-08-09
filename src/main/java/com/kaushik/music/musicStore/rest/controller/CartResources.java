package com.kaushik.music.musicStore.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.kaushik.music.musicStore.model.Cart;
import com.kaushik.music.musicStore.model.CartItem;
import com.kaushik.music.musicStore.model.Customer;
import com.kaushik.music.musicStore.model.Product;
import com.kaushik.music.musicStore.service.CartItemServices;
import com.kaushik.music.musicStore.service.CartServices;
import com.kaushik.music.musicStore.service.CustomerServices;
import com.kaushik.music.musicStore.service.ProductServices;

@RestController
@RequestMapping("/cart/api")
public class CartResources {

	@Autowired
	private CartServices cartServices;
	@Autowired
	private CustomerServices customerServices;
	@Autowired
	private ProductServices productServices;
	@Autowired
	private CartItemServices cartItemServices;

	public CartResources() {
		// TODO Auto-generated constructor stub
	}

	@GetMapping("/{cartId}")
	@ResponseBody
	public Cart getCartById(@PathVariable(value = "cartId") int cartId) {
		return cartServices.getCartById(cartId);
	}

	@PutMapping("/add/{productId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItems(@PathVariable(value = "productId") int productId,
			@AuthenticationPrincipal UserDetails activeUser) {
		Customer customer = customerServices.getCustomerByUsername(activeUser.getUsername());
		Cart cart = customer.getCart();
		Product product = productServices.findById(productId);
		List<CartItem> cartItems = cart.getCartItem();
		for (int items = 0; items < cartItems.size(); items++) {
			if (product.getProductId() == cartItems.get(items).getProduct().getProductId()) {
				CartItem cartItem = cartItems.get(items);
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalPrice(product.getProductPrice() * cartItem.getQuantity());
				cartItemServices.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(product.getProductPrice() * cartItem.getQuantity());
		cartItem.setCart(cart);
		cartItemServices.addCartItem(cartItem);
	}

	@PutMapping("/remove/{productId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable(value = "productId") int productId) {
		CartItem cartItem = cartItemServices.getCartItemByProductId(productId);
		cartItemServices.removeCartItem(cartItem);

	}

	@DeleteMapping("/{cartId}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void clearCart(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartServices.getCartById(cartId);
		cartItemServices.removeAllCartItems(cart);
	}

	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload.")
	public void handleClientErrors(Exception e) {
	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error.")
	public void handleServerErrors(Exception e) {
	}

}
