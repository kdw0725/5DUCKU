package org.oduck.mapper;

import java.util.HashMap;
import java.util.List;

import org.oduck.domain.ProductFileVO;
import org.oduck.domain.ProductVO;

public interface ProductMapper {
	public List<HashMap<String, Object>> listProduct();
	public List<HashMap<String,Object>> detailProduct(int pro_code);
	public int insertProduct(ProductVO productVO);
	public int insertFile(ProductFileVO productFileVO);
}
