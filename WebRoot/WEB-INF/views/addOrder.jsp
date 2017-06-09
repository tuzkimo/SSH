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
    
    <title>添加工单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/SSH/style/main.css">

  </head>
  
  <body>
  	<div class="main">
  		<h2 class="title"><span>添加工单</span></h2>
  		<s:form action="addSave" theme="simple">
  			<table class="tab">
  				<s:hidden key="projectId" value="%{projectId}"/>
  				<tr>
  					<td class="label"><span class="required">*</span>工单名称：</td>
  					<td>
  						<s:textfield key="workorder.ordername"/>
  						<span><s:fielderror cssClass="error"><s:param>workorder.ordername</s:param></s:fielderror></span>
					</td>
  				</tr>
  				<tr>
  					<td class="label"><span class="required">*</span>执行人：</td>
  					<td>
  						<s:textfield key="workorder.executor"/>
  						<span><s:fielderror cssClass="error"><s:param>workorder.executor</s:param></s:fielderror></span>
					</td>
  				</tr>
  				<tr>
  					<td class="label"><span class="required">*</span>描述：</td>
  					<td>
  						<s:textfield key="workorder.description"/>
  						<span><s:fielderror cssClass="error"><s:param>workorder.description</s:param></s:fielderror></span>
					</td>
  				</tr>
  				<tr>
  					<td class="label">工单等级：</td>
  					<td>
  						<s:select list="#{1:'1级',2:'2级',3:'3级'}" key="workorder.orderlevel"/>
  						<span><s:fielderror cssClass="error"><s:param>workorder.orderlevel</s:param></s:fielderror></span>
					</td>
  				</tr>
  				<tr>
  					<td colspan="2" style="text-align: center"><s:submit value="提交"/></td>
  				</tr>
  			</table>
  		</s:form>
  		<p><span class="error"><s:property value="msg"/></span></p>
  	</div>
  	
  	<script type="text/javascript" src="/SSH/js/jquery-1.8.3.min.js"></script>
  	<script type="text/javascript">
  	
  		$(document).ready(function() {
  		
  			$('form').submit(function() {
  			
  				var flag = true;
  				
  				var $ordername = $('#addSave_workorder_ordername');
  				var $executor = $('#addSave_workorder_executor');
  				var $description = $('#addSave_workorder_description');
  				
  				if ($ordername.val() == null || $ordername.val() == "") {
  					alert("工单名称不能为空！");
					flag = false;
				}
				
  				if ($executor.val() == null || $executor.val() == "") {
  					alert("执行人不能为空！");
					flag = false;
				}
				
  				if ($description.val() == null || $description.val() == "") {
  					alert("描述不能为空！");
					flag = false;
				}
				
				return flag;
  			
  			});
  		
  		});
  	
  	</script>
  
  </body>
</html>
