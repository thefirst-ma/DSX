<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
	<link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/Styles/bridging.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/common.js"></script>
<script type="text/javascript">

	function userUpdate(){
	/*$("#userForm").attr("action","");
	$("#userForm").submit();*/
}
$(document).ready(function(){
});
	function custom_close(){
		if
		(confirm("您确定要更改吗？")){
			window.opener=null;
			window.open('','_self');
			window.close();
		}
		else{}
	}
	function custom_close1(){
		if
		(confirm("关闭窗口？")){
			window.opener=null;
			window.open('','_self');
			window.close();
			window.history.back(-1);
		}
		else{}
	}

</script>
</head>
<body>
	<form method="post" id="userForm" action="${pageContext.request.contextPath}/vegetable/update.do">
		<div class="specificPageEdit" style="*position: static;">
			<div class="form">
				<div class="specificPage_header fix">
					<h4 class="specificPage_title l">
						<span id="MainContent_lbTitle">修改</span>
					</h4>
					<span class="closePage r" onclick="custom_close1();">关闭</span>
				</div>
				<div id="MainContent_divTitleTab" class="activeEdite_tab_list"
					style="margin-bottom: 3px;">
					<p>
						<span class="tab_list_current" data-tab="tab_1" onclick="Common.switchTab(this);">修改菜品信息</span>
					</p>
				</div>

				<div class="hide_tab fix" data-tab="tab_1" id="tab_1">
					<div id="MainContent_UpdatePanel1">

							<table border="0" cellpadding="0" cellspacing="6" style="width: 100%">
								<tr>
                                    <td class="input_text tar">菜品id：</td>
                                    <td>
                                        <p>
                                            <input name="vId" type="text" value="${vegetable.vId}" id="vId"
                                                   style="width: 150px;" readonly="readonly"/>
                                        </p>
                                    </td>
									<td class="input_text tar">菜品名称：</td>
									<td>
										<p>
											<input name="vName" type="text" value="${vegetable.vName}" id="vNname"
											style="width: 150px;" readonly="readonly"/>
										</p>
									</td>
									<td class="input_text tar">餐厅名称 ：</td>
									<td>
										<p>
											<input name="shopname" type="text" value="${vegetable.sName}" id="shopname"  style="width: 150px;" readonly="readonly"/>
										</p>
									</td>
									<td class="input_text tar">评分：</td>
									<td>
										<p>
											<input name="vGrade" type="text" value="" id="vGrade" style="width: 150px;" />
										</p>
									</td>
								</tr>
							</table>

					</div>
				</div>

			</div>

		</div>
		<div class="form_btn form_btn_static" content="center">
			<ul>
				<li><input type="submit" value="保存" onclick="custom_close()"/></li>
				<li><input type="button" value="关闭" onclick="custom_close1()" /></li>
			</ul>
		</div>
	</form>
</body>
</html>
