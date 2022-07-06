package com.kaushik.music.musicStore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class CustomeOrder implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4167385893382907672L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int customeOrderId;

	@OneToOne
	@JoinColumn(name = "cartId")
	@JsonIgnore
	private Cart cart;

	@OneToOne
	@JoinColumn(name = "customerId")
	@JsonIgnore
	private Customer customer;

	@OneToOne
	@JoinColumn(name = "billingId")
	private BillingAddress billingAddress;

	@OneToOne
	@JoinColumn(name = "shippingId")
	private ShippingAddress shippingAddress;

	public int getCustomeOrderId() {
		return customeOrderId;
	}

	public void setCustomeOrderId(int customeOrderId) {
		this.customeOrderId = customeOrderId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
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

}
