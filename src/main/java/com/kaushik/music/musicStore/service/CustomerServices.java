package com.kaushik.music.musicStore.service;

import java.util.List;

import com.kaushik.music.musicStore.model.Customer;

public interface CustomerServices {

	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer theCustomer);

	public void deleteById(int theId);

	public Customer getCustomerByUsername(String username);
}
