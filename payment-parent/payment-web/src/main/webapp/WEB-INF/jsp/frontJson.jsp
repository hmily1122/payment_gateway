<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
	//response.setHeader("Content-Type", "application/json");
	//response.setStatus(arg0)
	String callback = request.getParameter("callback");
	String data = String.valueOf(request.getAttribute("data"));
	String tempJsonInfoValue = String.valueOf(request.getAttribute("tempJsonInfoValue"));
	data = "{\"code\":200, \"msg\":\"请求成功\", \"data\":"+ data +", \"tempJsonInfoValue\":\""+tempJsonInfoValue+"\"}";
	
	//假如是Jsonp请求的话
	if(callback != null && callback.length() > 0){
		out.print(callback+"("+ data +");");  
	}else{//假如是普通的Ajax请求的话
		out.print(data);
	}
%>