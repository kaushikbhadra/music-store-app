package com.kaushik.music.musicStore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kaushik.music.musicStore.dao.BillingAddressRepository;
import com.kaushik.music.musicStore.dao.CartRepository;
import com.kaushik.music.musicStore.dao.CustomerRepository;
import com.kaushik.music.musicStore.dao.ShippingAddressRepository;
import com.kaushik.music.musicStore.dao.UserRepository;
import com.kaushik.music.musicStore.model.Cart;
import com.kaushik.music.musicStore.model.Customer;
import com.kaushik.music.musicStore.model.User;

@Service
public class CustomerServicesImpl implements CustomerServices {

	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private BillingAddressRepository billingAddressRepository;
	@Autowired
	private ShippingAddressRepository shippingAddressRepository;

	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private UserRepository userRepository;



	@Override
	public List<Customer> findAll() {
		return customerRepository.findAll();

	}

	@Override
	public Customer findById(int theId) {
		Optional<Customer> result = customerRepository.findById(theId);
		Customer customer = null;
		if (result.isPresent()) {
			customer = result.get();
		} else {
			throw new RuntimeException("Not Found: " + theId);
		}
		return customer;
	}

	@Override
	public void save(Customer theCustomer) {
		
		theCustomer.setPassword(passwordEncoder.encode(theCustomer.getPassword()));
		theCustomer.getBillingAddress().setCustomer(theCustomer);
		theCustomer.getShippingAddress().setCustomer(theCustomer);
		
		
		customerRepository.save(theCustomer);
		
		User user = new User();
		user.setUsername(theCustomer.getUsername());
		user.setPassword(theCustomer.getPassword());
		user.setCustomerId(theCustomer.getCustomerId());
		user.setRole("USER");
		
		billingAddressRepository.save(theCustomer.getBillingAddress());
		shippingAddressRepository.save(theCustomer.getShippingAddress());

		userRepository.save(user);
		
		Cart cart = new Cart();
		theCustomer.setCart(cart);
		cart.setCustomer(theCustomer);
		
		cartRepository.save(cart);
		

	}

	@Override
	public void deleteById(int theId) {
		customerRepository.deleteById(theId);

	}

	@Override
	public Customer getCustomerByUsername(String username) {
		return customerRepository.findByUsername(username);
	}

}
