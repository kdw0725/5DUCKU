	<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
	<!-- content page -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-7 p-b-30">
				<div class="p-l-25 p-r-30 p-lr-0-lg">
					<div class="wrap-slick3 flex-sb flex-w">
						<div class="wrap-slick3-dots"></div>
						<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

						<div class="slick3 gallery-lb">
							<div class="item-slick3" data-thumb="images/product-detail-01.jpg">
								<div class="wrap-pic-w pos-relative">
									<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

									<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-01.jpg">
										<i class="fa fa-expand"></i>
									</a>
								</div>
							</div>

							<div class="item-slick3" data-thumb="images/product-detail-02.jpg">
								<div class="wrap-pic-w pos-relative">
									<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

									<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-02.jpg">
										<i class="fa fa-expand"></i>
									</a>
								</div>
							</div>

							<div class="item-slick3" data-thumb="images/product-detail-03.jpg">
								<div class="wrap-pic-w pos-relative">
									<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

									<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="images/product-detail-03.jpg">
										<i class="fa fa-expand"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
				
			<div class="col-md-6 col-lg-5 p-b-30">
				<div class="p-r-50 p-t-5 p-lr-0-lg">
					<h4 class="mtext-105 cl2 js-name-detail p-b-14">
						<span id="nameArea"></span>
					</h4>

					<span class="mtext-106 cl2">
						<span id="priceArea"></span>
					</span>

					<p class="stext-102 cl3 p-t-23">
					</p>
					
					<!--  -->
					<div class="p-t-33">
						<div class="flex-w flex-r-m p-b-10">
							<div class="size-203 flex-c-m respon6">
								Size
							</div>

							<div class="size-204 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>Choose an option</option>
										<option>Size S</option>
										<option>Size M</option>
										<option>Size L</option>
										<option>Size XL</option>
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>
						</div>

						<div class="flex-w flex-r-m p-b-10">
							<div class="size-203 flex-c-m respon6">
								Color
							</div>

							<div class="size-204 respon6-next">
								<div class="rs1-select2 bor8 bg0">
									<select class="js-select2" name="time">
										<option>Choose an option</option>
										<option>Red</option>
										<option>Blue</option>
										<option>White</option>
										<option>Grey</option>
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>
						</div>

						<div class="flex-w flex-r-m p-b-10">
							<div class="size-204 flex-w flex-m respon6-next">
								<div class="wrap-num-product flex-w m-r-20 m-tb-10">
									<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-minus"></i>
									</div>

									<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

									<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-plus"></i>
									</div>
								</div>

								<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
									Add to cart
								</button>
							</div>
						</div>
						<div class="flex-w flex-r-m p-b-10">
							<h3>최대수량 : </h3>
						</div>	
					</div>

					<!--  -->
					<div class="flex-w flex-m p-l-100 p-t-40 respon7">
						<div class="flex-m bor9 p-r-10 m-r-11">
							<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
								<i class="zmdi zmdi-favorite"></i>
							</a>
						</div>

						<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
							<i class="fa fa-twitter"></i>
						</a>

						<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
							<i class="fa fa-google-plus"></i>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="bor10 m-t-50 p-t-43 p-b-40">
			<!-- Tab01 -->
			<div class="tab01">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item p-b-10">
						<a class="nav-link active" data-toggle="tab" href="#description" role="tab">설명</a>
					</li>

					<li class="nav-item p-b-10">
						<a class="nav-link" data-toggle="tab" href="#information" role="tab">제품 정보</a>
					</li>

					<li class="nav-item p-b-10">
						<a class="nav-link" data-toggle="tab" href="#reviews" role="tab">댓글</a>
					</li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content p-t-43">
					<!-- - -->
					<div class="tab-pane fade show active" id="description" role="tabpanel">
						<div class="how-pos2 p-lr-15-md">
							<p class="stext-102 cl6">
								Aenean sit amet gravida nisi. Nam fermentum est felis, quis feugiat nunc fringilla sit amet. Ut in blandit ipsum. Quisque luctus dui at ante aliquet, in hendrerit lectus interdum. Morbi elementum sapien rhoncus pretium maximus. Nulla lectus enim, cursus et elementum sed, sodales vitae eros. Ut ex quam, porta consequat interdum in, faucibus eu velit. Quisque rhoncus ex ac libero varius molestie. Aenean tempor sit amet orci nec iaculis. Cras sit amet nulla libero. Curabitur dignissim, nunc nec laoreet consequat, purus nunc porta lacus, vel efficitur tellus augue in ipsum. Cras in arcu sed metus rutrum iaculis. Nulla non tempor erat. Duis in egestas nunc.
							</p>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="information" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<ul class="p-lr-28 p-lr-15-sm">
									<li class="flex-w flex-t p-b-7">
										<span class="stext-102 cl3 size-205">
											Weight
										</span>

										<span class="stext-102 cl6 size-206">
											0.79 kg
										</span>
									</li>

									<li class="flex-w flex-t p-b-7">
										<span class="stext-102 cl3 size-205">
											제품상태
										</span>

										<span class="stext-102 cl6 size-206" id="statusArea">
										</span>
									</li>

									<li class="flex-w flex-t p-b-7">
										<span class="stext-102 cl3 size-205">
											제품 구입일
										</span>

										<span class="stext-102 cl6 size-206" id="dateArea">
										</span>
									</li>

									<li class="flex-w flex-t p-b-7">
										<span class="stext-102 cl3 size-205">
											발송지
										</span>

										<span class="stext-102 cl6 size-206" id="shipArea">
										</span>
									</li>

									<li class="flex-w flex-t p-b-7">
										<span class="stext-102 cl3 size-205">
											Size
										</span>

										<span class="stext-102 cl6 size-206">
											XL, L, M, S
										</span>
									</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- - -->
					<div class="tab-pane fade" id="reviews" role="tabpanel">
						<div class="row">
							<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
								<div class="p-b-30 m-lr-15-sm">
									<!-- Review -->
									<div class="flex-w flex-t p-b-68">
										<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
											<img src="images/avatar-01.jpg" alt="AVATAR">
										</div>

										<div class="size-207">
											<div class="flex-w flex-sb-m p-b-17">
												<span class="mtext-107 cl2 p-r-20">
													Ariana Grande
												</span>

												<span class="fs-18 cl11">
													<i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star"></i>
													<i class="zmdi zmdi-star-half"></i>
												</span>
											</div>

											<p class="stext-102 cl6">
												Quod autem in homine praestantissimum atque optimum est, id deseruit. Apud ceteros autem philosophos
											</p>
										</div>
									</div>
									
									<!-- Add review -->
									<form class="w-full">
										<h5 class="mtext-108 cl2 p-b-7">
											Add a review
										</h5>

										<p class="stext-102 cl6">
											Your email address will not be published. Required fields are marked *
										</p>

										<div class="flex-w flex-m p-t-50 p-b-23">
											<span class="stext-102 cl3 m-r-16">
												Your Rating
											</span>

											<span class="wrap-rating fs-18 cl11 pointer">
												<i class="item-rating pointer zmdi zmdi-star-outline"></i>
												<i class="item-rating pointer zmdi zmdi-star-outline"></i>
												<i class="item-rating pointer zmdi zmdi-star-outline"></i>
												<i class="item-rating pointer zmdi zmdi-star-outline"></i>
												<i class="item-rating pointer zmdi zmdi-star-outline"></i>
												<input class="dis-none" type="number" name="rating">
											</span>
										</div>

										<div class="row p-b-25">
											<div class="col-12 p-b-5">
												<label class="stext-102 cl3" for="review">Your review</label>
												<textarea class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10" id="review" name="review"></textarea>
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="name">Name</label>
												<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
											</div>

											<div class="col-sm-6 p-b-5">
												<label class="stext-102 cl3" for="email">Email</label>
												<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10">
											Submit
										</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
		<span class="stext-107 cl6 p-lr-25">
			SKU: JAK-01
		</span>

		<span class="stext-107 cl6 p-lr-25">
			Categories: Jacket, Men
		</span>
	</div>
</section>
	
<script type="text/javascript">
$(document).ready(function(){
	var productData ={
			"pro_code" : "${pro_code}",
			"seller_num" : "",
			"seller_name" : "", 
			"pro_quantity" : "",
			"pro_price" : "",
			"pro_discount" : "",
			"pro_type" : "",
			"pro_status" : "",
			"pro_date" : "",
			"pro_delflag" : ""
	};
	
	$.ajax({
        type: 'GET',
        url: '/productDetail/'+productData.pro_code,
        async:false,
        data: productData,
        dataType: "json",
        beforeSend : function(xhr){
        },
        success : function(list) {
        	productData.pro_code = list.pro_code;
        	productData.seller_num = list.seller_num;
        	productData.seller_name = list.seller_name;
        	productData.pro_quantity = list.pro_quantity;
        	productData.pro_price = list.pro_price;
        	productData.pro_discount = list.pro_discount;
        	productData.pro_type = list.pro_type;
        	productData.pro_status = list.pro_status;
        	productData.pro_date = list.pro_date;
        	productData.pro_ship = list.pro_ship;
        	
        	var name = document.createElement('div');
        	var price = document.createElement('div');
        	var date = document.createElement('div');
        	var status = document.createElement('div');
        	var ship = document.createElement('div');
        	
        	name.innerHTML = productData.pro_type;
        	price.innerHTML = '￦'+productData.pro_price;
        	date.innerHTML =  productData.pro_date;
        	status.innerHTML = productData.pro_status;
        	ship.innerHTML = productData.pro_ship;
        	
        	document.getElementById('nameArea').appendChild(name);
        	document.getElementById('priceArea').appendChild(price);
        	document.getElementById('dateArea').appendChild(date);
        	document.getElementById('statusArea').appendChild(status);
        	document.getElementById('shipArea').appendChild(ship);
        },
        error : function(error){
        	alert(error);
        }
	});
});
</script>