<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.container{
		width:35%;
		margin:200px auto;
	}
	.container>div{
		margin-top:20px;
		padding:5px;
	}
	.title{
		display:inline-block;
		width:15%;
	}
	.input{
		display:inline-block;
		width:80%;
	}
</style>
</head>
<body>
	<form action="<%=request.getContextPath() %>/info/updateData" method="post">
		<input type="hidden" name="userid" value="${info.userid }" />
		<div class="container">
			<div style="border-bottom:1px solid red">
				<div class="title">用户名：</div>
				<div class="input">
					<input type="text" name="loginname" style="width:100%" value="${info.loginname}"/>
				</div>
			</div>
			<div style="border-bottom:1px solid red">
				<div class="title">密码：</div>
				<div class="input">
					<input type="text" name="password" style="width:100%" value="${info.password}"/>
				</div>
			</div>
			<div style="border-bottom:1px solid red">
				<div class="title">简介：</div>
				<div class="input">
					<textarea name=introduction style="width:100%">${info.introduction}</textarea>
				</div>
			</div>
			<div style="margin-top:30px;text-align:right">
				<input type="submit" value="提交" />
			</div>
		</div>
	</form>
	
</body>

<script>
	window.onload = function(){
		var msg = "${msg}";
		if(msg != ""){
			alert(msg);
		}
	}
</script>
</html>