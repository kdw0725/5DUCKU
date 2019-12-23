package org.oduck.controller;

import java.util.List;

import org.oduck.domain.ProductVO;
import org.oduck.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductAPIController {
	
	@Autowired
	ProductMapper productMapper;
	
	@GetMapping("/productList")
    public List<ProductVO> product() {
		return productMapper.listProduct();
    }
	
	@GetMapping("/productDetail/{pro_code}")
	public ProductVO productDetail(@PathVariable int pro_code) {
		return productMapper.detailProduct(pro_code);
	}
	
	@PostMapping("/productInsertDo")
	public int productInsertDo(@RequestBody ProductVO vo) {
		return productMapper.insertProduct(vo);
	}
	
}
