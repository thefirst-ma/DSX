<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>菜品信息</title>
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
	 });}
</script>
</head>

	<form id="searchUserForm1" action="" method="post">
			<div class="condition_search">
				<div class="search_title">
					<h3 class="total_title">菜品信息</h3>
<%--					<form action="{pageContext.request.contextPath}/vegetable/info1.do">--%>
						<input class="clickToReflesh"  formaction="" type="submit"  value="刷新">
<%--						<span class="clickToReflesh"  onclick="window.location.href = window.location.href;">点击刷新</span>--%>


					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="MainContent_labAllTotal"></span></div>
				</div>

<%--			<div class="search_detail" style="height: 80px;">--%>
<%--				<div class="search_table">--%>
<%--					<table cellpadding="0" cellspacing="0" style="width: 900px">--%>
<%--						<tr>--%>
<%--							<td class="input_text tar">用户名：</td>--%>
<%--							<td>--%>
<%--								<p><input type="text" id="username" name="username" style="width: 120px;"></p>--%>
<%--							</td>--%>
<%--							<td class="input_text tar">性别：</td>--%>
<%--							<td>--%>
<%--								<p>--%>
<%--									<select>--%>
<%--										<option value="">男</option>--%>
<%--										<option value="">女</option>--%>
<%--									</select>--%>
<%--								</p>--%>
<%--							</td>--%>
<%--							<td class="input_text tar">省份：</td>--%>
<%--							<td>--%>
<%--								<p><input type="text" style="width: 120px;"></p>--%>
<%--							</td>--%>
<%--							<td class="input_text tar">身份证：</td>--%>
<%--							<td>--%>
<%--								<p><input type="text" style="width: 120px;"></p>--%>
<%--							</td>--%>
<%--						</tr>--%>
<%--						<tr>--%>
<%--							<td class="input_text tar">生日：</td>--%>
<%--							<td colspan="7"><p><input type="text" id="birthday" style="width:120px;" readonly="readonly"></p></td>--%>

<%--						</tr>--%>
<%--					</table>--%>
<%--				</div>--%>
<%--				<input type="button" onclick="search();" class="search_btn" />--%>
<%--			</div>--%>
			<div class="edit">
				<h3 class="total_title">查询结果</h3>
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
						<td style="width: 80px; text-align: center;"><p>菜品名</p></td>
						<td style="width: 100px"><p>价格</p></td>
						<td style="width: 80px"><p>餐厅</p></td>
						<td style="width: 80px"><p>菜品种类</p></td>
						<td style="width: 100px"><p>菜品评分</p></td>
<%--						<td style="width: 80px"><p>姓名</p></td>--%>
<%--						<td style="width: 80px"><p>总收入</p></td>--%>
<%--						<td style="width: 80px"><p>余额</p></td>--%>
<%--						<td style="width: 100px"><p>注册日期</p></td>--%>
						<td class="total_table_contral" style="width: 210px"><p>操作</p></td>
					</tr>
				</thead>
			</table>
			<div style="height:100%; overflow-y: auto; overflow-x: hidden;">
				<table cellpadding="0" cellspacing="0"
					style="width: 100%; background-color: #FFF;">
					<tbody>
                      <c:forEach var="vegrtable" items="${list}">
						  <tr>
							  <td style="width: 100px"><p>${vegrtable.vName}</p></td>
							  <td style="width: 100px"><p>${vegrtable.vPrice}</p></td>
							  <td style="width: 100px"><p>${vegrtable.sName}餐厅</p></td>
							  <td style="width: 100px">
								  <p>
									  <c:choose>
								  <c:when test = "${vegrtable.vType==1}">凉菜</c:when>
								  <c:otherwise>热菜</c:otherwise>
									  </c:choose>
								  </p>
							  </td>


							  <td style="width: 100px"><p>菜品评分:${vegrtable.vGrade}</p></td>
							  <td class="delete" style="width: 250px; text-align: center;">
								  <p>
<%--									  <input type="button" onclick="Common.showPage(this);" value="添加订单"--%>
<%--											 data-url="./UserUpdate.html" />--%>
									  <a href="${pageContext.request.contextPath}/order/info.do">返回</a>

<%--								  <input type="submit" onclick="Common.showPage(this);" value="评分"--%>
<%--												   data-url="update.jsp" />--%>
							  </td>
						  </tr>
					  </c:forEach>

					</tbody>
					<tbody>
							<tr onclick="Common.switchLine(this,event);">
<%--								<td style="width: 250px; text-align: center;"><p><span >gyf</span></p></td>--%>
<%--								<td style="width: 250px; text-align: center;"><p><span >gyf@qq.com</span></p></td>--%>
<%--								<td style="width: 250px; text-align: center;"><p><span >qq</span></p></td>--%>
<%--								<td style="width: 250px; text-align: center;"><p><span >tel</span></p></td>--%>
<%--								<td style="width: 250px; text-align: center;"><p><span >payAccount</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >AA</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >amount</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >balance</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >BB</span></p></td>--%>

<%--								<td class="delete" style="width: 250px; text-align: center;">--%>
<%--									<p>--%>
<%--									<input type="button" onclick="Common.showPage(this);" value="添加订单"--%>
<%--									data-url="./UserUpdate.html" />--%>
<%--									<input type="button" onclick="Common.showPage(this);" value="评分"--%>
<%--									data-url="#" />--%>
<%--								</td>--%>
							</tr>
							<tr onclick="Common.switchLine(this,event);">
<%--								<td style="width: 80px; text-align: center;"><p><span >gyf</span></p></td>--%>
<%--								<td style="width: 100px; text-align: center;"><p><span >gyf@qq.com</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >qq</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >tel</span></p></td>--%>
<%--								<td style="width: 100px; text-align: center;"><p><span >payAccount</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >AA</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >amount</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >balance</span></p></td>--%>
<%--								<td style="width: 80px; text-align: center;"><p><span >BB</span></p></td>--%>

<%--								<td class="delete" style="width: 210px; text-align: center;">--%>
<%--									<p><input type="button" onclick="Common.showPage(this);" value="编辑"--%>
<%--											  data-url="./UserUpdate.html" />--%>
<%--										<input type="button" onclick="Common.showPage(this);" value="禁用"--%>
<%--											   data-url="#" />--%>
<%--								</td>--%>
							</tr>
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
				<span></span> 共${list.size()}条记录
			</p>
		</div>
		
		<div class="specific_page tal dn" id="popupLayer">
        <!--这里删除了style属性-->
        <iframe id="childform" frameborder="0" border="0" class="iframe_layer" name="layer_iframe"></iframe>
    </div>
	</form>
</body>
</html>
