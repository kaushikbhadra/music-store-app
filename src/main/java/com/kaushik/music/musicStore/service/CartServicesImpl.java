package com.kaushik.music.musicStore.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.music.musicStore.dao.CartRepository;
import com.kaushik.music.musicStore.model.Cart;

@Service
public class CartServicesImpl implements CartServices {

	@Autowired
	private CartRepository cartRepository;
	@Override
	public Cart getCartById(int cartId) {
		Optional<Cart> result = cartRepository.findById(cartId);
		Cart cart = null;
		if (result.isPresent()) {
			cart = result.get();
		} else {
			throw new RuntimeException("Not Found: " + cartId);
		}
		return cart;
	}

	@Override
	public void save(Cart cart) {
		cartRepository.save(cart);
	}

}
