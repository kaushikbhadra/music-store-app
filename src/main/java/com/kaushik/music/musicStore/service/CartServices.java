package com.kaushik.music.musicStore.service;

import com.kaushik.music.musicStore.model.Cart;

public interface CartServices {
	
	public Cart getCartById(int cartId);
	public void save(Cart cart);

}
