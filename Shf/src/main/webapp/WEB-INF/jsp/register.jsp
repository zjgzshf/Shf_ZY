<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>用户注册</h1>
     <form action="<%=request.getContextPath() %>/info/registerData" method="post">
    <table>
    	<tr>
    		<td>注册用户名:</td>
    		<td><input type="text" name="loginname" /></td>
    	</tr>
    	<tr>
    		<td>注册密码:</td>
    		<td><input type="text" name="password" /></td>
    	</tr>
    	<tr>
    		<td>注册简介：</td>
    		<td><textarea name="introduction"  rows="3" cols="25"/></textarea></td>
    	</tr>
    	<tr>
    		<td><input type="submit" value="注册" /></td>
    		<td><input type="reset" value="重置" /></td>
    	</tr>
    </table>
    </form>
    <br>
    ${msg}
    <br>
    已有账号？请单击 <a href="<%=request.getContextPath() %>/info/login">返回登录</a>
  </body>
</html>
