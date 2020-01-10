function projectInsert(){
	var formData = {
		"seller_name" : $('input[name="seller_name"]').val(),
		"pro_type" : $('input[name="pro_type"]').val(),
		"pro_price" : $('input[name="pro_price"]').val(),
		"pro_quantity" : $('input[name="pro_quantity"]').val(),
		"pro_date" : $('input[name="pro_date"]').val(),
		"pro_weight" : $('input[name="pro_weight"]').val()
	};
	
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
			if(result==1){
				fileInsert();
			}
			else{
				alert("error");
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

$('.btn-num-product-up').on('click', function(){
    var numProduct = Number($(this).prev().val());
    $(this).prev().val(numProduct + 1);
});

var count = 1;

$('.filePlus').on('click',function(){
	count++;
	if(count < 4){
		var div = document.createElement('div');
		div.innerHTML = '\
			<label for="ex_file'+count+'" class="flex-c-m stext-101 cl2 size-111 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="width : 100px; border-radius: 0px;">파일 선택</label>\
			<input id="text'+count+'" class="size-111 bor8 p-lr-20" disabled="disabled" placeholder="선택된 파일 없음" style="background-color: white;">\
			<input type="file" class="upload-hidden'+count+'" name="upload_file" id="ex_file'+count+'" accept="image/*">\
			';
		div.style.display = 'flex';
		document.getElementById('fileInput').appendChild(div);
		if(count == 2){
			var fileTarget2 = $('.fileInput .upload-hidden2');
			fileTarget2.on('change', function(){ // 값이 변경되면
				if(window.FileReader){ // modern brows1er
					var filename = $(this)[0].files[0].name;
				}
				else{
					var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출  
				}
				$(this).siblings('.fileInput #text2').val(filename);
			});
		}
		else if(count == 3){
			var fileTarget3 = $('.fileInput .upload-hidden3');
			fileTarget3.on('change', function(){ // 값이 변경되면
				if(window.FileReader){ // modern brows1er
					var filename = $(this)[0].files[0].name;
				}
				else{
					var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출  
				}
				$(this).siblings('.fileInput #text3').val(filename);
			});
		}
	}
	else{
		alert('사진은 최대 3개까지 등록이 가능합니다.');
	}
});

function fileInsert(){
	var formData = new FormData();
	formData.append("file1", $(".upload-hidden1")[0].files[0]);
	
	if(count > 2){
		formData.append("file2", $(".upload-hidden2")[0].files[0]);
	}
	if(count == 3){
		formData.append("file3", $(".upload-hidden3")[0].files[0]);
	}
	
	
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	
	$.ajax({
		url : '/fileUpload',
		type : 'POST',
		dataType : 'json',
		data : formData,
		contentType : false,
		processData : false,
		cache : false,
		timeout : 10000,//10초 timeout
		beforesend : function(xhr){
			  xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		},
		success : function(){
			alert("등록이 되었습니다.");
			location.href="/product";
		},
		error : function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
function tel(obj){
	 var number = obj.value.replace(/[^0-9]/g, "");
	    var phone = "";

	    if(number.length < 4) {
	        return number;
	    } else if(number.length < 7) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3);
	    } else if(number.length < 11) {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 3);
	        phone += "-";
	        phone += number.substr(6);
	    } else {
	        phone += number.substr(0, 3);
	        phone += "-";
	        phone += number.substr(3, 4);
	        phone += "-";
	        phone += number.substr(7);
	    }
	    obj.value = phone;
}
$(function() { 
	$("#postcodify_search_button").postcodifyPopUp(); 
}); 

function noBlank(){
	if(event.keyCode == 32) event.returnValue = false;
}
