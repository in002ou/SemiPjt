package com.gdu.app.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gdu.app.domain.ProductDTO;

public interface StoreService {
	
	// store.do
	public List<ProductDTO> products();
	// detail.do
	public ProductDTO detail(int productNo);
	//cart.do
	public int cart(HttpServletRequest request);
	
	
}
