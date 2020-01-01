<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!-- <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');"> -->
<!-- 	<h2 class="ltext-105 cl0 txt-leftr"> -->
<!-- 		LogIn -->
<!-- 	</h2> -->
<!-- </section>  -->
<section class="bg0 p-t-304 p-b-116">
	<div class="bg0 m-t-150 p-b-140">
		<div class="container">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-150 p-b-150 p-lr-15-lg w-full-md">
				</div>
				<div class="size-210 bor10 p-lr-70 p-t-150 p-b-150 p-lr-15-lg w-full-md">
					<form action="/login" method="post">
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" type="text" placeholder="ID" name="mem_id">
						</div>
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-30 p-r-30" type="password" placeholder="Password" name="mem_pw">
						</div>
						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
						<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
						    <font color="red">
						            ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}<br><br>
						        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
						    </font>
						</c:if>
						<input type="checkbox" id="checkBox" style="float : left;">
						<label for="checkBox" style="float: left;">자동 로그인</label>
						<button class="flex-c-m stext-101 cl0 size-121 bg1 bor1 hov-btn1 p-lr-15 m-t-80 trans-04 pointer">로그인</button>
					</form>
					<hr>
					<p class="l" style="text-align: center;">
						<a href="/findID">아이디 찾기</a>
						<span class="bar">|</span>
						<a href="/findPW">비밀번호 찾기</a>
						<span class="bar">|</span>
						<a href="/signIn">회원가입</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>