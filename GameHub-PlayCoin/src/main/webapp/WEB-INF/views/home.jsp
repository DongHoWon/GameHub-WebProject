<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
	<!--AJAX, BOOTSTRAP  -->
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
	
<body>

	<!--FULL_WRAPPER_DIV  -->
	<div style="width:100%;height:100%;">
		
		<!--WRAPPER_DIV-->
		<div style="display:-webkit-box;width:100%;height:100%;">
			
			<!--LEFT_DIV-->
			<div style="width:15%;height:100%;">
			</div>

			<!--CENTER_DIV-->
			<div style="width:70%;height:100%;display:-webkit-box;">
				
				<!--IMG_WRAPPER_DIV  -->
				<div style="width:50%;height:100%;">
					
					<!--IMG_DIV1  -->
					<div style="width:100%;height:50%;">
						<img style="display:block; margin-left:auto; margin-right:auto;width:80%;height:100%;" src="${pageContext.request.contextPath }/resources/img/gamehub.jpg" alt="">
					</div>
					
					<!--IMG_DIV2  -->
					<div style="width:100%;height:50%;">
						<img style="display:block; margin-left:auto; margin-right:auto;width:80%;height:100%;" src="${pageContext.request.contextPath }/resources/img/playcoin.jpg" alt="">
					</div>
					
				</div>
				
				<!--LOGIN_WRAPPER_DIV  -->
				<div style="width:50%;height:100%;">
					<!--LOGIN_DIV  -->
					<div style="width:100%; height:40%;margin-top:40%;">
	
						<div>
							<span style="font-size:40px;">GAMEHUB KOREA</span>
						</div>
						
						<div style="margin-bottom:15px;">
							<label>아이디</label>
    						<input type="text" class="form-control" id="uid"  placeholder="Enter Your ID!" maxlength="10">
   							<small class="form-text text-muted">ID는 10자까지 입력 가능합니다.</small>
						</div>
						
						<div style="margin-bottom:15px;">
							<label>이름</label>
    						<input type="text" class="form-control" id="uname"  placeholder="Enter Your NAME!" maxlength="10">
   							<small class="form-text text-muted">이름은 10자까지 입력 가능합니다.</small>
   						</div>
   						
   						<div>
   							<button id="loginbtn" type="button" class="btn btn-primary">로그인</button>
   							<button id="joinbtn" type="button" class="btn btn-primary">회원가입</button>
   						</div>
					</div>
				</div>
				
			</div>

			<!--RIGHT_DIV-->
			<div style="width:15%;height:100%;">
			</div>
			
		</div>
	</div>

</body>

<script type="text/javascript">
	
	//회원가입 페이지 이동
	$("#joinbtn").on('click',function(){
		location.href='/www/join';
	});
	
	//로그인
	$("#loginbtn").on('click',function(){
		var param={
				'uid':$("#uid").val(),
				'uname':$("#uname").val(),
		};
		
		$.ajax({
            type : 'POST',
            url : '/www/user/checks',
            contentType : "application/json",
            data : JSON.stringify(param),
            success : function(response) {
				 if(Object.keys(response.length)>0){
					alert('회원가입이 성공되었습니다.');
					location.href='/www';
				}
				else
					alert('회원가입이 실패 되었습니다.'); 
					alert(response);
            },
            error : function(e) {
                alert("ERROR : " + e.statusText);
            }
        }); 
	});
	
</script>

</html>
