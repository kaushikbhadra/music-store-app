package com.kaushik.music.musicStore.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.kaushik.music.musicStore.model.Product;

public class ProductDAO {

	private List<Product> productList;

	public List<Product> getProductList() {

		Product product = new Product();
		product.setProductId(1);
		product.setProductName("Sannam");
		product.setProductCondition("standard");
		product.setProductDescription("sang by Atif Aslam");
		product.setProductStatus("avilable");
		product.setProductCategory("music");
		product.setProductPrice(123.45d);
		product.setUnitInStock(7);
		product.setProductManufacture("t-SERIES");
		

		Product product1 = new Product();
		product1.setProductId(2);
		product1.setProductName("Tara");
		product1.setProductCondition("standard");
		product1.setProductDescription("sang by Atif Aslam");
		product1.setProductStatus("avilable");
		product1.setProductCategory("music");
		product1.setProductPrice(30.45d);
		product1.setUnitInStock(2);
		product1.setProductManufacture("Zee-music");
		
		productList = new ArrayList<Product>();
		productList.add(product);
		productList.add(product1);
		return productList;
	}

	public Product getProductById(int productId) throws IOException {
		for(Product product : getProductList()) {
			if(product.getProductId() == productId) {
				return product;
			}
		}
		
		throw new IOException("No Product Found!");
		
	}
/*
 * <!--  <div class="form-group">
120: 							<label class="control-label" for="productImage">Upload
121: 								Picture</label>
122: 							<form:input id="productImage" path="productImage" type="file"
123: 								class="form:input-large" />
124: 						</div>-->
 * */

}
