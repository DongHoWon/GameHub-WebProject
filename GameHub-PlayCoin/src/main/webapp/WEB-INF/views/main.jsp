<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

	<div style="width:100%;height:100%;">
		<!--TOP  -->
		<div style="width:100%;height:10%;">
			<span style="font-size:40px;">사용자 목록 조회</span>
		</div>

		<div style="width:100%;height:10%;">
			<button id="goHome" type="button" class="btn btn-primary">홈 화면으로 돌아가기</button>
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
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</html>