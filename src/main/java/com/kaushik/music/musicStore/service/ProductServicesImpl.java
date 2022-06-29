package com.kaushik.music.musicStore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.music.musicStore.dao.ProductRepository;
import com.kaushik.music.musicStore.model.Product;

@Service
public class ProductServicesImpl implements ProductServices {

	private ProductRepository prodRepository;

	@Autowired
	public ProductServicesImpl(ProductRepository theProdRepo) {
		prodRepository = theProdRepo;
	}

	@Override
	public List<Product> findAll() {
		return prodRepository.findAll();
	}

	@Override
	public Product findById(int theId) {
		Optional<Product> result = prodRepository.findById(theId);
		Product product = null;
		if (result.isPresent()) {
			product = result.get();
		} else {
			throw new RuntimeException("Not Found: " + theId);
		}
		return product;
	}

	@Override
	public void save(Product theProduct) {
		prodRepository.save(theProduct);
	}

	@Override
	public void deleteById(int theId) {
		prodRepository.deleteById(theId);
	}

}
