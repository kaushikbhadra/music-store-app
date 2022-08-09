package com.kaushik.music.musicStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kaushik.music.musicStore.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {

}
