package com.gdu.app.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {
	
	private int productNo;
	private String productName;
	private int price;
	private String productContent;
	
}
