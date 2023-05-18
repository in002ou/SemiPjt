package com.gdu.app.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gdu.app.domain.CartDTO;
import com.gdu.app.domain.ProductDTO;

@Mapper
public interface StoreMapper {
	
	public List<ProductDTO> productList();
	public ProductDTO productDetail(int productNo);
	public int insertCart (CartDTO cartDTO);
}
