package com.gdu.app.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdu.app.domain.CartDTO;
import com.gdu.app.domain.ProductDTO;
import com.gdu.app.mapper.StoreMapper;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreMapper storeMapper;
	
	@Override
	public List<ProductDTO> products() {
		List<ProductDTO> products = storeMapper.productList();
		return products;
	}
	
	@Override
	public ProductDTO detail(int productNo) {
		ProductDTO productDTO = storeMapper.productDetail(productNo);
		return productDTO;
	}
	
	@Override
	public int cart(HttpServletRequest request) {
		CartDTO cartDTO = new CartDTO();
		cartDTO.setProductNo(Integer.parseInt(request.getParameter("ProductNo")));
		cartDTO.setCount(Integer.parseInt(request.getParameter("count")));
		
		int insertResult = storeMapper.insertCart(cartDTO);
		return insertResult;
	}
	
}
