package com.gdu.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gdu.app.service.StoreService;

@RequestMapping("/store")
@Controller
public class StoreContoller {
	
	@Autowired
	private StoreService storeService;
	
	@GetMapping("store.do")
	public String store(Model model) {
		model.addAttribute("products", storeService.products());
		return "store/store";
	}
	
	@GetMapping("detail.do")
	public String detail(@RequestParam("productNo") int productNo,
						Model model) {
		model.addAttribute("product", storeService.detail(productNo));
		return "store/detail";
	}
	
	
	@PostMapping("/cart.do")
	public String cart(HttpServletRequest request, Model model) {
		model.addAttribute("insertResult", storeService.cart(request));
		return "store/store";
	}
	
}
