$(function(){
		//사용자들 ID 조회
		$.ajax({
	        type : 'GET',
	        url : '/www/users',
	        success : function(response) {
	        	if(response.length>0){
	        		alert('사용자 목록 조회 완료');
	        		for(var i=0;i<response.length;i++){
	        			$user='<tr style="border:1px solid black;"><td>'+ (i+1) +'</td><td>'+ response[i].uid +'</td>'
	        			+'<td><button type="button" class="btn btn-primary" onclick="detailUser(\''+ response[i].uid + '\')">상세조회</button></td></tr>';
	        			$("#tbodys").append($user);
	        		}
	        	}else{
	        		alert('사용자가 존재하지 않습니다.');
	        	}
	        },
	        error : function(e) {
	            alert("ERROR : " + e.statusText);
	        }
	    }); 
	});
	
	//메인으로
	$("#goMain").on('click',function(){
		location.href='/www';
	});

	//상세 조회
	function detailUser(uid){
		var screenW = screen.availWidth;  
		var screenH = screen.availHeight;
		var popW = 800; 
		var popH = 200; 
		var posL=( screenW-popW ) / 2;   
		var posT=( screenH-popH ) / 2;
		window.open("/www/detail?uid="+uid,"", 'width='+ popW +',height='+ popH +',top='+ posT +',left='+ posL +',resizable=no,scrollbars=no'); 
	}