	<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 


<section class="bg0 p-t-304 p-b-116">
	<div class="bg0">
		<div class="container">
			<div class="size-210 bor10 w-full-md flex-w flex-tr" style="margin : auto;">
				<div class="size-110 p-lr-70 p-t-100 p-b-100 p-lr-15-lg w-full-md">
					<h2 class="p-b-50">회원가입</h2>
					<form action="signInDo" method="post">
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="이름">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="text" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="아이디">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="password" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="비밀번호" autocomplete="off">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="password" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="비밀번호 확인" autocomplete="off">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="tel" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="전화번호" onkeyup="tel(this)">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="email" class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" placeholder="이메일">
						</div>
						
						<!--주소검색 -->
						<div style="display: flex;">
							<div class="bor8 m-b-20 size-116-2 how-pos4-parent">
								<input type="text" name="" class="postcodify_postcode5 stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="우편번호" style="height: -webkit-fill-available;" readonly="readonly"/>
							</div>
							<div class="m-b-20 size-116-2 how-pos4-parent m-l-10">						 
								<button type="button" id="postcodify_search_button" class="flex-c-m stext-101 cl3 size-116-2 bg2 bor1 hov-btn4 p-lr-15 trans-04 pointer">검색</button>
							</div>
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="text" name="" class="postcodify_address stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="주소" readonly="readonly"/>
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input type="text" name="" class="postcodify_details stext-111 cl2 plh3 size-116 p-l-30 p-r-30" value="" placeholder="상세주소"/>
						</div>
						
						<button type="submit" class="flex-c-m stext-101 cl0 size-121 bg1 bor1 hov-btn1 p-lr-15 m-t-10 trans-04 pointer">회원가입</button>
						<button type="reset" class="flex-c-m stext-101 cl3 size-121 bg2 bor1 hov-btn1 p-lr-15 m-t-10 trans-04 pointer">초기화</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

