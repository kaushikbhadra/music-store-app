package com.kaushik.music.musicStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kaushik.music.musicStore.model.CartItem;
@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {

	@Query(value = "SELECT * FROM CartItem WHERE productId = ?1" , nativeQuery = true)
	public CartItem findByCartItemByProductId(int productId);
}
