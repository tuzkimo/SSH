<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>工单管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/SSH/style/main.css">

  </head>
  
  <body>
  	<div class="main">
  		<h2 class="title"><span>工单管理系统</span></h2>
  		<s:form action="addOrder" theme="simple">
  			<table class="tab">
  				<tr>
  					<td class="label">项目列表：</td>
  					<td>
						<s:select list="projects" listKey="id" listValue="projectname" name="projectId"></s:select>
					</td>
					<td><s:submit value="提交"/></td>
  				</tr>
  			</table>
  		</s:form>
  	</div>
  
  </body>
</html>
