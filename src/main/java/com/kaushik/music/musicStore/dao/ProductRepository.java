package com.kaushik.music.musicStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kaushik.music.musicStore.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {

}
