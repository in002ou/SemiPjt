package com.gdu.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/store")
@Controller
public class StoreContoller {

	@GetMapping("price.do")
	public String store() {
		return "store/price";
	}
	
}
