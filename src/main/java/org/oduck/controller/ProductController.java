package org.oduck.controller;

import org.oduck.domain.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductController {
	@GetMapping("/product")
    public String product() {
        return "5duck/product/product.tiles";
    }
	
	@GetMapping("/product/{pro_code}")
	public String Detail(@PathVariable int pro_code) {
		return "5duck/product/productDetail.tiles";
	}
	
	@GetMapping("/productInsert")
	public String Insert() {
		return "5duck/product/productInsert.tiles";
	}
}
