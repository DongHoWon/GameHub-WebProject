$(function(){
		//사용자들 ID 조회
		$.ajax({
	        type : 'GET',
	        url : '/www/users',
	        success : function(response) {
	        	if(response.length>0){
	        		alert('사용자 관리 조회  완료.');
	        		for(var i=0;i<response.length;i++){
	        			$user='<tr style="border:1px solid black;"><td>'+ response[i].uid +'</td><td>'+ response[i].uname +'</td>'
	        				 +'<td>'+response[i].umail+'</td><td>'+response[i].unick+'</td><td>'+response[i].udate+'</td>'
	        				 +'<td><button type="button" onclick="userDel(\''+response[i].uid+'\')" class="btn btn-primary">삭제</button></td></tr>';
	        			$("#tbodys").append($user);
	        		}
	        	}else{
	        		alert('사용자 정보가 없습니다.');
	        	}
	        },
	        error : function(e) {
	            alert("ERROR : " + e.statusText);
	        }
	    }); 
	});
	
	function userDel(uid){
		//사용자 삭제
		$.ajax({
	        type : 'DELETE',
	        url : '/www/user/'+uid,
	        success : function(response) {
	        	if(response>0){
	        		alert('사용자 삭제  완료.');
	        		location.reload();
	        	}else{
	        		alert('사용자 삭제 실패.');
	        	}
	        },
	        error : function(e) {
	            alert("ERROR : " + e.statusText);
	        }
	    }); 
	}