package com.kaushik.music.musicStore.service;

import java.util.List;

import com.kaushik.music.musicStore.model.Product;

public interface ProductServices {
	
	public List<Product> findAll();

	public Product findById(int theId);

	public void save(Product theProduct);

	public void deleteById(int theId);

}
