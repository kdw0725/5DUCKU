<!--===============================================================================================-->	
	<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/bootstrap/js/popper.js"></script>
	<script src="/mainresources/bootstrap/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/daterangepicker/moment.min.js"></script>
	<script src="/mainresources/bootstrap/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/slick/slick.min.js"></script>
	<script src="/mainresources/bootstrap/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="/mainresources/bootstrap/js/main.js"></script>
	<script src="/mainresources/bootstrap/js/myjs.js"></script>
<!-- 	<script src="/mainresources/bootstrap/vendor/daterangepicker/daterangepicker.js"></script> -->
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script>
	$(function() {
    $( "#daterangepicker" ).datepicker({
        changeMonth: true, 
        changeYear: true,
        nextText: "다음달",
        prevText: "이전달",
        dateFormat: 'yy-mm-dd',
        showOtherMonths: "true",
    	dayNames: ['일요일','월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
    	monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	    });
	});	
	</script>
	<!-- 	주소 검색 api -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	
	 