<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowInfo</title>

<style>

	.table{
		width:80%;
		margin:10px auto;
	}
	.title{
		border:2px solid;
		font-weight:bold;
	}
	.row{
		border-left:1px solid blue;
		border-right:1px solid blue;
		border-bottom:1px solid blue;
	}
	.row:nth-child(even){
		background-color:#99FF66;
	}
	
	span{
		display:inline-block;
		
	}
	.title span{
		text-align:center;
	}
	.col1{
		width:5%;
		border-right:1px solid blue;
	}
	.col2{
		width:20%;
	}
	.col3{
		border-left:1px solid blue;
		width:63%;
	}
	.col4{
		border-left:1px solid blue;
		width:10%;
	}
	
</style>

</head>
<body>
	<div style="width:80%;margin:auto;text-align:right">
		<a href="<%=request.getContextPath() %>/info/insert">新增</a> &nbsp;&nbsp;<a href="<%=request.getContextPath() %>/index.jsp">退出</a>
	</div>
	<table>
	<tr>
		<th>id</th>
		<th>name</th>
		<th>password</th>
		<th>operation</th>
		<th>opt</th>
	
	</tr>
	<c:forEach items="${infoList}" var="inf">
	<tr>
		<td>${inf.userid}</td>
		<td>${inf.loginname}</td>
		<td>${inf.password}</td>
		<td>${inf.introduction}</td>
		<td><a href="<%=request.getContextPath() %>/info/update?id=${inf.userid }">更改</a>
					&nbsp;|&nbsp;
					<a href="<%=request.getContextPath() %>/info/delete?id=${inf.userid}">删除</a></td>
		
	</tr>
	</c:forEach>
	</table>
	
	
</body>
</html>