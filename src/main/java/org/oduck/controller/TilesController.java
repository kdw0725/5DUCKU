package org.oduck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class TilesController {
	@GetMapping("/")
    public String base() {
        return "base";
    }
    
//	@GetMapping("/product")
//    public String product() {
//        return "5duck/product/product.tiles";
//    }
	
	@GetMapping("/productD")
    public String product_detail() {
        return "5duck/productD.tiles";
    }
	
	@GetMapping("/contact")
    public String contact() {
        return "5duck/contact.tiles";
    }
	
	@GetMapping("/cart")
    public String cart() {
        return "5duck/cart.tiles";
    }
	@GetMapping("/home")
    public String home() {
        return "5duck/home1.tiles";
    }
	@GetMapping("/home2")
    public String home2() {
        return "5duck/home2.tiles";
    }
	@GetMapping("/about")
    public String about() {
        return "5duck/about.tiles";
    }
}