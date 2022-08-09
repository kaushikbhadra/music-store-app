package com.kaushik.music.musicStore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.music.musicStore.dao.CartItemRepository;
import com.kaushik.music.musicStore.model.Cart;
import com.kaushik.music.musicStore.model.CartItem;

@Service
public class CartItemServicesImpl implements CartItemServices {
	
	@Autowired
	private CartItemRepository cartItemRepository;

	public CartItemServicesImpl() {
	}

	@Override
	public void addCartItem(CartItem cartItem) {
		cartItemRepository.save(cartItem);

	}

	@Override
	public CartItem getCartItemByProductId(int productId) {
		return cartItemRepository.findByCartItemByProductId(productId);
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		cartItemRepository.delete(cartItem);
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		List<CartItem> cartItems = cart.getCartItem();
		for(CartItem item: cartItems) {
			removeCartItem(item);
		}
	}

}
