
 
function projectInsert(){
	var formData = {
		"seller_name" : $('input[name="seller_name"]').val(),
		"pro_type" : $('input[name="pro_type"]').val(),
		"pro_price" : $('input[name="pro_price"]').val(),
		"pro_quantity" : $('input[name="pro_quantity"]').val(),
		"pro_date" : $('input[name="pro_date"]').val(),
		"pro_weight" : $('input[name="pro_weight"]').val()
	};
	console.log(formData);
	
	 var csrfHeaderName = "${_csrf.headerName}";
	 var csrfTokenValue = "${_csrf.token}";
	 
	$.ajax({
		type : 'POST',
		url : '/productInsertDo',
//		data : JSON.stringify(formData),
//		dataType : "text",
		data : JSON.stringify(formData),
		dataType : "json",
		contentType : "application/json; charset=utf-8",
		beforesend : function(xhr){
			  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		},
		success : function(result){
			if(result == 1){
				alert("등록이 되었습니다.");
				location.href="/product";
			}
			else{
				alert("일시적인 오류가 발생하였습니다.\n잠시후에 다시 이용해주세요.")
			}
			
		},
		error : function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function backtoProject(){
	if(confirm("취소하시겠습니까?")){
		location.href = "/product";
	}
}
$(function() {
    $( "#testDatepicker" ).datepicker({
    });
});

//$('.btn-num-product-up').on('click', function(){
//    var numProduct = Number($(this).prev().val());
//    $(this).prev().val(numProduct + 1);
//});