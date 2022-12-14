package com.kaushik.music.musicStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kaushik.music.musicStore.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

}
