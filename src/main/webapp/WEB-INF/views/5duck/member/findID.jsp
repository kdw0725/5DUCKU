<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<section class="bg0 p-t-304">
	<div class="bg0 p-b-140">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-150 p-b-150 p-lr-15-lg w-full-md m-lr-auto" id="findIdArea">
					<div class="bor8 m-b-40 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" type="text" placeholder="이름" name="member_name" required="required" onKeypress = "noBlank()">
					</div>
					<div class="bor8 m-b-40 how-pos4-parent">
						<input name="member_pnum" type="tel" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="전화번호" onkeyup="tel(this)" required="required" onKeypress = "noBlank()">
					</div>
					
					<button type="button" class="flex-c-m stext-101 cl0 size-121 bg1 bor1 hov-btn1 p-lr-15 m-t-40 trans-04 pointer" id="findId">아이디 찾기</button>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
$(document).ready(function(){
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$(document).ajaxSend(function(e, xhr, options){
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	});
	
	$('input[name=member_name]').on('keyup',function(){
		this.value=this.value.replace(/[^ㄱ-ㅎㅏ-ㅣ-가-힣]/gi,'')
	});
	
	$('input[name=member_pnum]').on('keyup',function(){
		this.value=this.value.replace(/[^0-9\-]/gi,'')
	});
	
	$('#findId').on('click', function(){
		findID();
	});

})
</script>