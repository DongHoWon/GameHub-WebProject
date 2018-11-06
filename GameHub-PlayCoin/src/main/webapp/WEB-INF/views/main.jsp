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
		<!--TOP  -->
		<div style="width:100%;height:10%;">
			<span style="font-size:40px;">사용자 목록 조회</span>
		</div>

		<div style="width:100%;height:10%;">
			<button id="goMain" type="button" class="btn btn-primary">메인 화면으로 돌아가기</button>
		</div>

		<!--BOTTOM  -->		
		<div style="width:100%;height:80%;">
			<table style="width:30%;border:1px solid black;">
				<thead>
					<tr>
						<td>번호</td>
						<td>아이디</td>
						<td>상세조회</td>
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
</script>
</html>