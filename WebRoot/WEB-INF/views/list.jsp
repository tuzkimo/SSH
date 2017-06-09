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
    
    <title>工单列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/SSH/style/main.css">

  </head>
  
  <body>
  	<div class="main">
  		<h2 class="title"><span>工单列表</span></h2>
		<table class="tab">
			<thead>
				<tr class="head">
					<th>工单编号</th>
					<th>项目名称</th>
					<th>工单名称</th>
					<th>执行人</th>
					<th>描述</th>
					<th>等级</th>
					<th>日期</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="workorders" status="stat">
					<tr style="background-color: <s:property value='%{#stat.even==true?"#ccc":"#fff"}'/>">
						<td><s:property value="id"/></td>
						<td><s:property value="project.projectname"/></td>
						<td><s:property value="ordername"/></td>
						<td><s:property value="executor"/></td>
						<td><s:property value="description"/></td>
						<td><s:property value="orderlevel"/>&nbsp;级</td>
						<td><s:date name="orderdate" format="yyyy-MM-dd"/></td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
		<p><span class="success"><s:property value="msg"/></span></p>
  	</div>
  
  </body>
</html>
