package org.oduck.domain;

import lombok.Data;

@Data
public class ProductVO {
	private int		pro_code;
	private int		pro_price;
	private String  pro_type;
	private String  pro_date;
	private boolean pro_delflag;
	private String  seller_name;
	private double	pro_weight;
	private String  pro_regdate;
	private int		pro_quantity;
}
