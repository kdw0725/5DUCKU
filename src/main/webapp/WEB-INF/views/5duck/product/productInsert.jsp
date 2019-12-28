<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	
<!-- content page -->
<section class="sec-product-detail bg0 p-t-65 p-b-60">
	<div class="container" style="width : 70%;">
		<div class="row" style="margin-bottom: 30px;">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<input type="hidden" name="seller_name" value="kdw">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>제품명</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<input type="text" class="size-111 bor8 p-lr-20" name="pro_type" placeholder="제품명">
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 30px;">
			<input type="hidden" name="seller_name" value="kdw">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>제품 가격</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<input type="number" class="size-111 bor8 p-lr-20" name="pro_price" placeholder="제품 가격">
				<div class="priceArea">
					
				</div>
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 30px;">
			<input type="hidden" name="seller_name" value="kdw">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>최대 수량</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<input type="number" class="size-111 bor8 p-lr-20" name="pro_quantity" placeholder="최대 수량">
				<div class="quantityArea">
					
				</div>
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 30px;">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>제품 생산일</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<input type="text" class="size-111 bor8 p-lr-20" name="pro_date" placeholder="제품 생산일" id="daterangepicker">
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 30px;">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>상품 무게</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<input type="number" class="size-111 bor8 p-lr-20" name="pro_weight" placeholder="제품 무게(kg)">
			</div>
		</div>
		
		<div class="row" style="margin-bottom: 30px;">
			<div style = "width : 30%; float: left; text-align: center; vertical-align: middle;">
				<h5>제품 사진</h5>
			</div>
			<div style = "width : 70%; float: right;">
				<div class="fileInput">
					<label for="ex_file" class="flex-c-m stext-101 cl2 size-111 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="width : 100px; border-radius: 0px;">파일 선택</label>
					<input id="text1" class="size-111 bor8 p-lr-20" disabled="disabled" placeholder="선택된 파일 없음" style="background-color: white;">
					<input type="file" class="upload-hidden1" name="upload_file" id="ex_file" accept="image/*">
					<button class="filePlus">사진 추가하기</button>
				</div>
			</div>
			<div style = "width : 70%; float: right; margin-left: 30%;">
				<div class="fileInput" id="fileInput">
				</div>
			</div>
		</div>
		
		
	</div>
	
	<div class="container" style="width :20%;">
		<div style="width : 20%; float : left;">
			<button class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" onclick="projectInsert()">등록</button>
		</div>
		<div style="width : 20%; float: right;">
			<button class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" onclick="backtoProject()">취소</button>
		</div>
	</div>
	
</section>

<script>
var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
$(document).ajaxSend(function(e, xhr, options){
	xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
});


$(document).ready(function(){ 
	var fileTarget1 = $('.fileInput .upload-hidden1');
	
	fileTarget1.on('change', function(){ // 값이 변경되면
		if(window.FileReader){ // modern brows1er
			var filename = $(this)[0].files[0].name;
		}
		else{
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출  
		}
		$(this).siblings('.fileInput #text1').val(filename);
	});
	
});
</script>
