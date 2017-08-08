<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
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
    <h1>用户登录</h1>
    <form action="<%=request.getContextPath() %>/info/loginData" method="post">
    <table>
    	<tr>
    		<td>用户名:</td>
    		<td><input type="text" name="loginname" /></td>
    	</tr>
    	<tr>
    		<td>密码:</td>
    		<td><input type="text" name="password" /></td>
    	</tr>
    	<tr>
    		<td><input type="submit" value="登录" /></td>
    		<td><input type="reset" value="重置" /></td>
    	</tr>
    </table>
    <br>
    ${msg}
    <br>
    </form>
    <br>
    没有账号？请单击 <a href="<%=request.getContextPath() %>/info/register" target="_blank">注册</a>
  </body>
</html>
