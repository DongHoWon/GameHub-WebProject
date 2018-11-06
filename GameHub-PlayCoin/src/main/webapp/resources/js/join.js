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
		
		//아이디 특수문자 포함 정규식 검증  - 검색범위전체, 대소문자구분X
		var stringRegx = /[~!@?.\#$%<>^&*\()\-=+_\’]/gi;
		//아이디 저장
		var uidVal = $("#uid").val();
		
		if(uidVal=="")
			alert('아이디를 입력해주세요.');
		else{
			if(uidVal.match(stringRegx) == null){
				$.ajax({
					type : "GET",
					url : '/www/user/uid/'+$("#uid").val(),
					success : function(response) {
						if (uidVal == response) {
							alert('중복된 아이디 입니다. 다른 아이디를 사용 해주세요.');
							uidDuplicate = true;
						} else {
							alert('사용 가능한 아이디 입니다.');
							uidDuplicate = false;
							saveuid=uidVal;
						}
					}
				});	
			}
			else
				alert('특수 문자를 포함할 수 없습니다.');
		}
	});
	
	//이메일 중복 조회 체크
	$("#umailDuplicate").on("click",function(){
		//이메일 저장
		var umailVal = $("#umail").val();
		
		//이메일 정규식 검증
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if(umailVal==""){
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
						if (umailVal == response) {
							alert('중복된 이메일 입니다. 다른 이메일을 사용 해주세요');
							umailDuplicate = true;
						} else {
							alert('사용 가능한 이메일입니다.');
							umailDuplicate = false;
							saveumail = umailVal;
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
			
			if(uidDuplicate==false && umailDuplicate==false && saveuid==$("#uid").val() && saveumail==$("#umail").val()){
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