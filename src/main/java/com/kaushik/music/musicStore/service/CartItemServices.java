package com.kaushik.music.musicStore.service;

import com.kaushik.music.musicStore.model.Cart;
import com.kaushik.music.musicStore.model.CartItem;

public interface CartItemServices {

	public void addCartItem(CartItem cartItem);

	public CartItem getCartItemByProductId(int productId);

	public void removeCartItem(CartItem cartItem);

	public void removeAllCartItems(Cart cart);

}
