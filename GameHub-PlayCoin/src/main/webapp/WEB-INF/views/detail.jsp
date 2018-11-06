<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<%
	String uid=request.getParameter("uid");
%>
<script type="text/javascript">
	var uid = '<%=uid%>';
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/detail.js"></script>

</head>

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
</html>