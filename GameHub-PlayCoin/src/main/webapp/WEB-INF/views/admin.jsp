<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>

	<div style="width:100%;height:100%;">
		<div style="width:100%;height:20%;">
			<span style="font-size:38px;">사용자 관리</span>
		</div>
		
		<div style="width:100%;height:80%; margin-top:15px;">
			<table style="width:100%;height:50%;border:1px solid black;">
				<thead>
					<tr>
						<td>아이디</td>
						<td>이름</td>
						<td>이메일</td>
						<td>별명</td>
						<td>등록일시</td>
						<td>관리</td>
					</tr>
				</thead>
				<tbody id="tbodys">
					
				</tbody>
			</table>
		</div>
	</div>
</body>

<script type="text/javascript">
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
</script>
</html>