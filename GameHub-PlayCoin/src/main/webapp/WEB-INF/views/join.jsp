<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div>
		<div class="container" style="width: 600px; margin-top: 10px;">
			<div class="row">
				<div class="modal-content">
					<div class="modal-header"
						style="background: white; border-bottom: 1px solid gainsboro">
						<h4 class="modal-title">회원가입을 환영합니다!</h4>
					</div>
					<div class="modal-body">

						<!-- 아이디 입력 -->
						<div class="form-group">
							<label>아이디</label>
							<div style="display: -webkit-box;">
								<input id="uid" style="width: 80%;" type="text"
									class="form-control" maxlength="10">
								<button class="btn btn-primary" id="uidDuplicate"
									style="font-size: 13px; margin: auto 0; margin-left: 6px;">중복확인</button>
							</div>
							<span class="help-block">아이디는 로그인 하는데 사용됩니다.</span>
						</div>
						<!-- /아이디 입력 -->

						<!-- 이름 입력 -->
						<div class="form-group">
							<label>이름</label> <input id="uname" style="width: 80%;"
								type="text" class="form-control" maxlength="10"> <span
								class="help-block">이름은 로그인 하는데 사용됩니다.</span>
						</div>
						<!-- /이름 입력 -->


						<!-- 이메일 입력 -->
						<div class="form-group">
							<label>이메일</label> 
							<div style="display: -webkit-box;">
								<input id="umail" style="width: 80%;"
									type="text" class="form-control" maxlength="50">
								<button class="btn btn-primary" id="umailDuplicate"
									style="font-size: 13px;margin: auto 0; margin-left: 6px;">중복확인</button>
							</div>
							<span class="help-block">이메일을 입력해주세요.</span>
						</div>
						<!-- /이메일 입력 -->
						
						<!-- 별명 입력 -->
						<div class="form-group">
							<label>별명</label> <input id="unick" style="width: 80%;"
								type="text" class="form-control" maxlength="20">
							<span class="help-block">별명을 입력해주세요.</span>
						</div>
						<!-- /별명 입력 -->
						
					</div>

					<div class="modal-footer">
						<button class="btn btn-primary" id="createUser"
							style="font-size: 13px; margin: auto 0; margin-left: 6px;">CREATE
							NEW ACCOUNT</button>
						<button type="button" style="font-size: 13px;"
							class="btn btn-primary" id="goHome">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	//아이디 중복체크 boolean
	var uidDuplicate=null;
	
	//중복체크한 아이디 저장
	var saveuid=null;
	
	//중복체크한 이메일 저장
	var saveumail=null;
	
	//이메일 중복체크 boolean
	var umailDuplicate=null;
	
	//아이디 중복 조회 체크
	$("#uidDuplicate").on("click",function(){
		if($("#uid").val()=="")
			alert('아이디를 입력해주세요.');
		else{
			$.ajax({
				type : "GET",
				url : '/www/user/uid/'+$("#uid").val(),
				success : function(response) {
					if ($("#uid").val() == response) {
						alert('중복된 아이디 입니다. 다른 아이디를 사용 해주세요.');
						uidDuplicate = true;
					} else {
						alert('사용 가능한 아이디 입니다.');
						uidDuplicate = false;
						saveuid=$("#uid").val();
					}
				}
			});	 
		}
	});
	
	//이메일 중복 조회 체크
	$("#umailDuplicate").on("click",function(){
		//이메일 저장
		var umailVal = $("#umail").val();
		//이메일 정규식 검증
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if($("#umail").val()==""){
			alert('이메일을 입력해주세요.');
		} 
		else{
			if(umailVal.match(regExp) != null){
				var param ={
					'umail' : $("#umail").val()
				};
				$.ajax({
					type : "POST",
					url : '/www/user/umail',
					contentType : "application/json",
				    data : JSON.stringify(param),
					success : function(response) {
						alert(response);
						if (response==$("#umail").val()) {
							alert('중복된 이메일 입니다. 다른 이메일을 사용 해주세요');
							umailDuplicate = true;
						} else {
							alert('사용 가능한 이메일입니다.');
							umailDuplicate = false;
							saveumail=$("#umail").val();
						}
					}
				});	 
			}else{
				alert('올바른 이메일 주소를 입력해주세요.');
			}
		}
	});
	
	//회원가입
	$("#createUser").on("click",function(){
		if($("#uid").val()=="" || $("#uname").val()=="" || $("#umail").val()==""){
			alert('정보를 모두 입력해 주세요.');
		}
		
		else{
			var param={
					'uid':$("#uid").val(),
					'uname':$("#uname").val(),
					'umail':$("#umail").val(),
					'unick':$("#unick").val()
			};
			
			if(uidDuplicate==false && umailDuplicate==false &&saveuid==$("#uid").val() && saveumail==$("#umail").val()){
				$.ajax({
		             type : 'POST',
		             url : '/www/user',
		             contentType : "application/json",
		             data : JSON.stringify(param),
		             success : function(response) {
						if(response>0){
							alert('회원가입이 성공되었습니다.');
							location.href='/www';
						}
						else
							alert('회원가입이 실패 되었습니다.');
		             },
		             error : function(e) {
		                 alert("ERROR : " + e.statusText);
		             }
		         }); 
			}else{
				alert('아이디 혹은 이메일 중복 체크를 해주세요.');
			}
		}
	});
	
	//메인으로
	$("#goHome").on("click",function(){
		location.href='/www';
	});
</script>



</html>
