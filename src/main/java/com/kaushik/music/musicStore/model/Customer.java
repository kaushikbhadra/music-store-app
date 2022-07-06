package com.kaushik.music.musicStore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3579826667072720646L;

	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customerId;

	@NotEmpty(message = "customer name not be empty")
	private String customerName;
	
	@NotEmpty(message = "customer Email not be empty")
	private String customerEmail;

	private String customerPhoneNumb;

	@NotEmpty(message = "customer username not be empty")
	private String username;

	@NotEmpty(message = "customer password not be empty")
	private String password;

	@OneToOne
	@JoinColumn(name = "billingId")
	private BillingAddress billingAddress;

	@OneToOne
	@JoinColumn(name = "shippingId")
	private ShippingAddress shippingAddress;

	@OneToOne
	@JoinColumn(name = "cartId")
	@JsonIgnore
	private Cart cart;
	
	public Customer() {

	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPhoneNumb() {
		return customerPhoneNumb;
	}

	public void setCustomerPhoneNumb(String customerPhoneNumb) {
		this.customerPhoneNumb = customerPhoneNumb;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

}
