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
									class="form-control">
								<button class="btn btn-primary" id="uidDuplicate"
									style="font-size: 13px; margin: auto 0; margin-left: 6px;">중복확인</button>
							</div>
							<span class="help-block">아이디는 로그인 하는데 사용됩니다.</span>
						</div>
						<!-- /아이디 입력 -->

						<!-- 이름 입력 -->
						<div class="form-group">
							<label>이름</label> <input id="uname" style="width: 80%;"
								type="text" class="form-control"> <span
								class="help-block">이름은 로그인 하는데 사용됩니다.</span>
						</div>
						<!-- /이름 입력 -->


						<!-- 이메일 입력 -->
						<div class="form-group">
							<label>이메일</label> 
							<div style="display: -webkit-box;">
								<input id="umail" style="width: 80%;"
									type="text" class="form-control">
								<button class="btn btn-primary" id="umailDuplicate"
									style="font-size: 13px;margin: auto 0; margin-left: 6px;">중복확인</button>
							</div>
							<span class="help-block">이메일을 입력해주세요.</span>
						</div>
						<!-- /이메일 번호입력 -->
						
						<!-- 별명 입력 -->
						<div class="form-group">
							<label>별명</label> <input id="unick" style="width: 80%;"
								type="text" class="form-control">
							<span class="help-block">별명을 입력해주세요.</span>
						</div>
						<!-- /별명 번호입력 -->
						
					</div>

					<div class="modal-footer">
						<button class="btn btn-primary"
							style="font-size: 13px; margin: auto 0; margin-left: 6px;">CREATE
							NEW ACCOUNT</button>
						<button type="button" style="font-size: 13px;"
							class="btn btn-primary" id="goMain">Cancel</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$("#goMain").on("click",function(){
		location.href='/www';
	});
</script>



</html>
