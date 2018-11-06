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
			$("#adminid").val("");
			$("#adminname").val("");
			alert('관리자 로그인 완료.');
			window.open("/www/admin","", 'width='+ popW +',height='+ popH +',top='+ posT +',left='+ posL +',resizable=no,scrollbars=no'); 
		}else{
			alert('관리자 정보가 올바르지 않습니다.');
		}
	});
	
	//사용자 목록 조회화면으로
	$("#users").on('click',function(){
		location.href='/www/main'
	});