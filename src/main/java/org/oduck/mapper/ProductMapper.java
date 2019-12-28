package org.oduck.mapper;

import java.util.List;

import org.oduck.domain.ProductFileVO;
import org.oduck.domain.ProductVO;

public interface ProductMapper {
	public List<ProductVO> listProduct();
	public ProductVO detailProduct(int pro_code);
	public int insertProduct(ProductVO productVO);
	public int insertFile(ProductFileVO productFileVO);
}
