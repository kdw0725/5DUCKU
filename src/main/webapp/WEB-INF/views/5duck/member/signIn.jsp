	<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 


<section class="bg0 p-t-304 p-b-116">
	<div class="bg0">
		<div class="container">
			<div class="size-210 bor10 w-full-md flex-w flex-tr" style="margin : auto;">
				<div class="size-110 p-lr-70 p-t-100 p-b-100 p-lr-15-lg w-full-md">
					<h2 class="p-b-50">회원가입</h2>
					<form action="/signInDo" method="post" id="signInForm">
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<input name="member_name" type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="이름" required="required" onKeypress = "noBlank()">
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_id" type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="아이디" required="required" onKeypress = "noBlank()" maxlength="15">
							<button id="idCheck" type="button" class="flex-c-m stext-101 cl3 size-112 bg2 bor1 hov-btn4 p-lr-15 m-t-10 trans-04 pointer" style="position: absolute; top: -6px; right: 1%; border-radius: 15px;">중복확인</button>
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_pw" type="password" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="비밀번호" autocomplete="off" required="required" onKeypress = "noBlank()" maxlength="19">
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input type="password" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="비밀번호 확인" autocomplete="off" required="required" onKeypress = "noBlank()" id="pwCheck" maxlength="19">
						</div>
						<p id="pwCheckResult"></p>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_pnum" type="tel" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="전화번호" onkeyup="tel(this)" required="required" onKeypress = "noBlank()">
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_email" type="email" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="이메일" required="required" onKeypress = "noBlank()">
						</div>
						<!--주소검색 -->
						<div style="display: flex;">
							<div class="bor8 m-b-20 p-tb-1 size-116-2 how-pos4-parent">
								<input name="member_addr_num" type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="우편번호" style="height: -webkit-fill-available;" readonly="readonly" required="required" id="sample4_postcode"/>
							</div>
							<div class="m-b-20 p-tb-1 size-116-2  how-pos4-parent m-l-10">						 
								<button type="button" class="flex-c-m stext-101 cl3 size-116-2 bg2 bor1 hov-btn4 p-lr-15 trans-04 pointer" onclick="sample4_execDaumPostcode()">검색</button>
							</div>
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_addr" type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="주소" readonly="readonly" required="required" id="sample4_roadAddress"/>
						</div>
						<div class="bor8 m-b-20 p-tb-1 how-pos4-parent">
							<input name="member_addr_detail" type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="상세주소" required="required" id="sample4_detailAddress"/>
						</div>
						
						<input type="checkbox" id="checkBox" style="float : left;">
						<label style="float: left; margin-bottom: 20px;"><a href="#">이용약관</a>을 확인하였으며 이에 동의합니다.</label>
						
						<button type="button" class="flex-c-m stext-101 cl0 size-121 bg1 bor1 hov-btn1 p-lr-15 m-t-10 trans-04 pointer" id="formSubmit">회원가입</button>
						<button type="reset" class="flex-c-m stext-101 cl3 size-121 bg2 bor1 hov-btn1 p-lr-15 m-t-10 trans-04 pointer">초기화</button>
					</form>
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

	var idChecked = 0;
	var pwChecked = 0;
	var termChecked = 0;
	
	$('input[name=member_name]').on('keyup',function(){
		this.value=this.value.replace(/[^ㄱ-ㅎㅏ-ㅣ-가-힣]/gi,'')
	});
	
	$('input[name=member_id]').on('keyup',function(){
		idChecked = 0;
		this.value=this.value.replace(/[^a-z0-9]/gi,'')
	});
	
	$('input[name=member_pnum]').on('keyup',function(){
		this.value=this.value.replace(/[^0-9\-]/gi,'')

	});

	
	$('#pwCheck').on('keyup',function(){
		var pw = $('input[name=member_pw]').val();
		var pwCheck = $('#pwCheck').val();
		if(pw == pwCheck){
			$("#pwCheckResult").html('비밀번호가 일치합니다.');
			$("#pwCheckResult").css('color', 'blue');
			$("#pwCheckResult").css('margin-bottom', '20px');
			pwChecked = 1;
		}
		else{
			$("#pwCheckResult").html('비밀번호가 일치하지않습니다.');
			$("#pwCheckResult").css('color', 'red');
			$("#pwCheckResult").css('margin-bottom', '20px');
			pwChecked = 0;
		}
	});
	
	$("#checkBox").on("click", function(event){
		if($("input:checkbox[id='checkBox']").is(":checked")==true){
			termChecked = 1;
		}else{
			termChecked = 0;
		}
	})
	
	$('#idCheck').on('click', function(){
		var id = $('input[name=member_id]').val();
		alert(id.length);
		if(id.length > 3 && id.length < 20){
			var idData = {member_id : id};
			$.ajax({
				type : 'POST',
				data : JSON.stringify(idData),
				dataType : 'json',
				contentType : "application/json; charset=utf-8",
				url : "/idCheck",
				beforesend : function(xhr){
					  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success : function(result){
					if(result == 0){
						alert("사용할 수 있는 아이디 입니다.");
						idChecked = 1;
					}
					else if(result == 1){
						alert("이미 존재하는 아이디 입니다.\n다른 아이디를 사용해주세요.");
					}
					else{
						alert("오류가 발생하였습니다.\n관리자에게 문의하여주세요.");
					}
				},
				error : function(request,status,error){
				    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})
		}
		else{
			alert("아이디는 4자 이상, 20자 미만으로 입력해주세요.");
		}
	});
	
	$('#formSubmit').on('click', function(){
		if(idChecked==1 && pwChecked==1 && termChecked==1){
			var form = document.getElementById('signInForm');
			if(form.checkValidity()){
				form.submit();
			}else{
				alert('항목을 확인하여주세요.');
			}
		}
		else if(idChecked == 0){
			alert('아이디 중복확인을 해주세요.');
		}
		else if(pwChecked == 0){
			alert('비밀번호를 확인하여주세요.');
		}
		else if(termChecked == 0){
			alert('약관에 동의하여주세요.');
		}
		else{
			alert('오류가 발생하였습니다.\n새로고침 후 다시 시도해 주세요.');
		}
	});
})
</script>

