<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>用户信息</title>
	<link rel="Stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/Styles/bridging.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/Scripts/common.js"></script>
<script type="text/javascript">
	 function search(){
	/* $("#searchUserForm1").attr("action","");
	 $("#searchUserForm1").submit();
	 }*/
	 $(document).ready(function(){
		 
	 	$("#birthday").datepicker({
			dateFormat: 'yy-mm-dd',
		});
	 });
	 }
</script>
</head>
<body>
	<form id="searchUserForm1" action="" method="post">
		<div class="condition_search">
			<div class="search_title">
				<h3 class="total_title">订单信息</h3>
				<span class="clickToReflesh" onclick="window.location.href = window.location.href;">点击刷新</span>
				<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="MainContent_labAllTotal"></span></div>
			</div>

<%--			<div class="search_detail" style="height: 80px;">--%>
<%--				<div class="search_table">--%>
<%--					<table cellpadding="0" cellspacing="0" style="width: 900px">--%>
<%--&lt;%&ndash;						<tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td class="input_text tar">订单号：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td>&ndash;%&gt;--%>
<%--&lt;%&ndash;								<p><input type="text" id="username" name="username" style="width: 120px;"></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td class="input_text tar">性别：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td>&ndash;%&gt;--%>
<%--&lt;%&ndash;								<p>&ndash;%&gt;--%>
<%--&lt;%&ndash;									<select>&ndash;%&gt;--%>
<%--&lt;%&ndash;										<option value="">男</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;										<option value="">女</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;									</select>&ndash;%&gt;--%>
<%--&lt;%&ndash;								</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td class="input_text tar">时间：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td>&ndash;%&gt;--%>
<%--&lt;%&ndash;								<p><input type="text" style="width: 120px;"></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td class="input_text tar">身份证：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td>&ndash;%&gt;--%>
<%--&lt;%&ndash;								<p><input type="text" style="width: 120px;"></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;							</td>&ndash;%&gt;--%>
<%--						</tr>--%>
<%--&lt;%&ndash;						<tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td class="input_text tar">生日：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;							<td colspan="7"><p><input type="text" id="birthday" style="width:120px;" readonly="readonly"></p></td>&ndash;%&gt;--%>

<%--&lt;%&ndash;						</tr>&ndash;%&gt;--%>
<%--					</table>--%>
<%--				</div>--%>
<%--				<input type="button" onclick="search();" class="search_btn" />--%>
			</div>
			<div class="edit">
				<h3 class="total_title">订单列表</h3>
<%--				<ul>--%>
<%--					<li><input type="button" value="新增" class="addition"--%>
<%--						data-url="${pageContext.request.contextPath}/user/edit.do"--%>
<%--						onclick="Common.showPage(this);" /></li>--%>
<%--				</ul>--%>
			</div>
		</div>
		
		<!--这里是表格数据-->
		<div class="total_table rel">
			<table border="0" cellspacing="0" cellpadding="0"
				style="width: 100%;">
				<thead>
					<tr>
						<td style="width: 80px; text-align: center;"><p>用户名</p></td>
						<td style="width: 100px"><p>订单编号</p></td>
						<td style="width: 80px"><p>手机号码</p></td>
						<td style="width: 80px"><p>总花费</p></td>
<%--						<td style="width: 100px"><p></p></td>--%>
						<td style="width: 80px"><p>支付状态</p></td>
						<td style="width: 80px"><p>支付方式</p></td>
<%--						<td style="width: 80px"><p>手机号码</p></td>--%>
						<td style="width: 100px"><p>开单日期</p></td>
						<td class="total_table_contral" style="width: 210px"><p>操作</p></td>
					</tr>
				</thead>
			</table>
			<div style="height: 200px; overflow-y: auto; overflow-x: hidden;">
				<table cellpadding="0" cellspacing="0"
					style="width: 100%; background-color: #FFF;">
					<tbody>
					<c:forEach var="shopOrder" items="${list}">
							<tr onclick="Common.switchLine(this,event);" >
								<td style="width: 100px; text-align: center;"><p><span >${shopOrder.name1}</span></p></td>
								<td style="width: 120px; text-align: center;"><p><span >${shopOrder.oId}</span></p></td>
								<td style="width: 80px; text-align: center;"><p><span >${shopOrder.phone}</span></p></td>
								<td style="width: 80px; text-align: center;"><p><span >${shopOrder.oPrice}</span></p></td>
								<td style="width: 100px; text-align: center;"><p><span >${shopOrder.condition}</span></p></td>
								<td style="width: 80px; text-align: center;"><p><span >${shopOrder.payway}</span></p></td>
								<td style="width: 80px; text-align: center;"><p><span >${shopOrder.time1}</span></p></td>
<%--								<td style="width: 80px; text-align: center;"><p><span >balance</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >BB</span></p></td>--%>

								<td class="delete" style="width: 230px; text-align: center;">
<%--									<p><input type="button" onclick="Common.showPage(this);" value="查看详情"--%>
<%--									data-url="./UserUpdate.html" />--%>
									<a href="${pageContext.request.contextPath}/order/info1.do?oId=${shopOrder.oId}">查看详情</a>
<%--									<input type="button" onclick="Common.showPage(this);" value="禁用"--%>
<%--									data-url="#" />--%>
								</td>
							</tr>
					</c:forEach>
<%--							<tr onclick="Common.switchLine(this,event);">--%>
<%--								<td style="width: 100px; text-align: center;"><p><span >gyf</span></p></td>--%>
<%--								<td style="width: 120px; text-align: center;"><p><span >gyf@qq.com</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >qq</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >tel</span></p></td>--%>
<%--								<td style="width: 100px; text-align: center;"><p><span >payAccount</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >AA</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >amount</span></p></td>--%>
<%--&lt;%&ndash;								<td style="width: 80px; text-align: center;"><p><span >balance</span></p></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;								<td style="width: 80px; text-align: center;"><p><span >BB</span></p></td>&ndash;%&gt;--%>
<%--								<td class="delete" style="width: 230px; text-align: center;">--%>
<%--									<p><input type="button" onclick="Common.showPage(this);" value="查看"--%>
<%--											  data-url="./UserUpdate.html" />--%>
<%--&lt;%&ndash;										<input type="button" onclick="Common.showPage(this);" value="禁用"&ndash;%&gt;--%>
<%--&lt;%&ndash;											   data-url="#" />&ndash;%&gt;--%>
<%--								</td>--%>
<%--							</tr>--%>
					</tbody>
				</table>
			</div>
		</div>
		
		<!-- 分页查询 -->
		<div class="page">
			<p class="page_number">
				<a href="javascript:void(0)" onclick="this.href='#'">[第一页]</a>
				<a href="javascript:void(0)" onclick="this.href='#'">[上一页]</a>
				<a href="javascript:void(0)" onclick="this.href='#'">[下一页]</a>
				<a href="javascript:void(0)" onclick="this.href='#'">[最后一页]</a>
				<span>1/2</span>
					<span>每页显示</span>8条记录 共${list.size()}条记录
			</p>
		</div>
		
		<div class="specific_page tal dn" id="popupLayer">
        <!--这里删除了style属性-->
        <iframe id="childform" frameborder="0" border="0" class="iframe_layer" name="layer_iframe"></iframe>
    </div>
	</form>
</body>
</html>
