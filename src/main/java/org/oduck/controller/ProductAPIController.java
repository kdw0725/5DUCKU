package org.oduck.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.oduck.domain.ProductFileVO;
import org.oduck.domain.ProductVO;
import org.oduck.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

@Log4j
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
	
	@PostMapping("/fileUpload")
	public void fileUpload(MultipartHttpServletRequest request, ProductFileVO productFileVO) throws Exception{
		Map<String, MultipartFile> test = request.getFileMap();
		for(int i=1;i<test.size();i++) {
			String sourceFileName = test.get("file"+i).getOriginalFilename();
			String sourceFileNameExtension =  FilenameUtils.getExtension(sourceFileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileURL = "C:\\dev\\sts-bundle\\sts-3.9.9.RELEASE\\workspace\\5DUCKU\\src\\main\\webapp\\mainresources\\upload\\";
			
			do {
				destinationFileName = RandomStringUtils .randomAlphanumeric(32)+"."+sourceFileNameExtension;
				destinationFile = new File(fileURL+destinationFileName);
			}while(destinationFile.exists());
			destinationFile.getParentFile().mkdirs();
			test.get("file"+i).transferTo(destinationFile);
			
			productFileVO.setFile_name(destinationFileName);
			productFileVO.setFile_oriname(sourceFileName);
			productFileVO.setFile_url(fileURL);
			productMapper.insertFile(productFileVO);
		}
	}
	
}
