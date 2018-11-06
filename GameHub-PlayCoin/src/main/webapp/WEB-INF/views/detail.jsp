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
<%
	String uid=request.getParameter("uid");
%>
<body>

	<div style="width:100%;height:100%;">
		<div style="width:100%;height:80%;">
			<table style="width:100%;height:50%;border:1px solid black;">
				<thead>
					<tr>
						<td>아이디</td>
						<td>이름</td>
						<td>이메일</td>
						<td>별명</td>
						<td>등록일시</td>
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
	        url : '/www/user/<%=uid%>',
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
	
</script>
</html>