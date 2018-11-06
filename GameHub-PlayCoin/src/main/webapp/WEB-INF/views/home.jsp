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
					<div style="width:100%; height:40%;margin-top:30%;">
	
						<div>
							<span style="font-size:40px;">GAMEHUB KOREA</span>
						</div>
						
						<div style="margin-bottom:15px;">
							<label>관리자 아이디</label>
    						<input type="password" class="form-control" id="adminid"  placeholder="Enter Your ADMIN ID!" maxlength="10">
   							<small class="form-text text-muted">관리자 ID는 admin 입니다.</small>
						</div>
						
						<div style="margin-bottom:15px;">
							<label>관리자 이름</label>
    						<input type="password" class="form-control" id="adminname"  placeholder="Enter Your ADMIN NAME!" maxlength="10">
   							<small class="form-text text-muted">관리자 이름은 admin 입니다.</small>
   						</div>
   						
   						<div>
   							<button id="loginbtn" type="button" class="btn btn-primary">관리자로그인</button>
   							<button id="joinbtn" type="button" class="btn btn-primary">회원가입</button>
   						</div>
   						
   						<div style="margin-top:15px;">
   							<button id="users" type="button" class="btn btn-primary">사용자 목록 조회</button>
   						</div>
   						
   						<div style="margin-top:15px;">
   							<span>Copyright(c)2018 WONDONGHO All rights reserved.</span>
   						</div>
   						
   						<div style="margin-top:15px;">
   							<span><a href="https://github.com/DongHoWon/GameHub-WebProject">https://github.com/DongHoWon/GameHub-WebProject</a></span>
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
		var screenW = screen.availWidth;  
		var screenH = screen.availHeight;
		var popW = 800; 
		var popH = 200; 
		var posL=( screenW-popW ) / 2;   
		var posT=( screenH-popH ) / 2;
		
		if($("#adminid").val()=="admin" && $("#adminname").val()=="admin"){
			window.open("/www/admin","", 'width='+ popW +',height='+ popH +',top='+ posT +',left='+ posL +',resizable=no,scrollbars=no'); 
		}else{
			alert('관리자 정보가 올바르지 않습니다.');
		}
	});
	
	//사용자 목록 조회
	$("#users").on('click',function(){
		location.href='/www/main'
	});
	
</script>

</html>
