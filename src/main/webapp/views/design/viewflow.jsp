<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看流程图</title>
<%@ include file="/common/meta.jsp"%>
<%@ include file="/common/global.jsp"%>
    <%@ include file="/common/include-base-styles.jsp" %>

    <!-- 开发平台地址 -->
<script src="${jsPath }/lib/seajs/sea.js"
        data-config="${jsPath }/lib/seajs/config.js"
        data-main="${jsPath }/module/design/workflow.view.js"></script> 
<style>
.tip img{ width: 15px;height: 15px;}
.tip li{margin: 0px 5px;}
</style>

</head>
<body >
<div id="viewLayout">
				<div region="north" border="false" style="height: 26px;">
			      <ul class="nav nav-pills tip">
			         <li><img src="${jsPath}module/design/img/Active.gif">当前活动</li>
			         <li><img src="${jsPath}module/design/img/Passed.gif">已完成</li>
			         <li><img src="${jsPath}module/design/img/Pending.gif">已暂停</li>
			         <li><img src="${jsPath}module/design/img/Error.gif">错误</li>
			         <li><img src="${jsPath}module/design/img/cancelled.gif">已取消</li>
			       </ul>
			       ${modelName}
				</div>
				<div region="center" border="false" style="height: 56px;">
					<div id="viewFolw" style="height:100%;"></div>
				</div>
</div>


<textarea id="model" class="hide">${model}</textarea>
<textarea id="record" class="hide">${pageInfo}</textarea>
</body>
</html>
<script>
seajs.use("module/design/workflow.view",function(workfolw){
	$(function(){
		
		$("#viewLayout").layout();
		
		var test = new workfolw($("#viewFolw"),$("#model").val(),$("#record").val()); 
		
		
	});
	
	
	
	
});


</script>