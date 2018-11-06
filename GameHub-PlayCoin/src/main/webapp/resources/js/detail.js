$(function(){
		//사용자들 ID 조회
		$.ajax({
	        type : 'GET',
	        url : '/www/user/'+uid,
	        success : function(response) {
	        	if(Object.keys(response).length>0){
	        		alert('사용자 상세조회  완료');
        			$user='<tr style="border:1px solid black;"><td>'+ response.uid +'</td><td>'+ response.uname +'</td>'
        				 +'<td>'+response.umail+'</td><td>'+response.unick+'</td><td>'+response.udate+'</td></tr>';
        			$("#tbodys").append($user);
	        	}else{
	        		alert('사용자 상세조회 실패.');
	        	}
	        },
	        error : function(e) {
	            alert("ERROR : " + e.statusText);
	        }
	    }); 
	});