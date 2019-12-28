package org.oduck.domain;

import lombok.Data;

@Data
public class ProductFileVO {
	private int    file_no;
	private int	   pro_code;
	private String file_name;
	private String file_oriname;
	private String file_url;

}
