<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Head -->
<%@include file="../include/head.jspf"%>
</head>
<body style="padding: 20px">

	<div id="layout">
		<!-- Menu toggle -->
		<%@include file="../include/toggle.jspf"%>

		<!-- Menu  -->
		<%@include file="../include/menu.jspf"%>

		<div id="main">
			<div class="header">
				<h1>User</h1>
				<h2>Page</h2>
			</div>

			<table>
				<td valign="top">
					<!-- User Page --> 
					<form class="pure-form" 
							   method="Get"
							   action="${pageContext.request.contextPath }/mvc/user/page">
						
						<select name="no" onchange="this.form.submit()">
							<c:forEach var="no" begin="0" end="${totalPage-1 }">
								<option value="${no }" ${no == pageNo ? "selected" : "" }>${no+1 }</option>
							</c:forEach>
						</select>
						
					</form>
				</td>

				<td valign="top"><!-- 垂直置頂對齊 -->
					<!-- User 列表 --> 
					<form:form class="pure-form">
						<fieldset>
							<legend>User List</legend>
							<table class="pure-table pure-table-bordered">
								<thead>
									<tr align='center'><!-- align='center' 左右置中對齊 -->
										<th>ID</th>
										<th>Name</th>
										<th>Password</th>
										<th>Birth</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="user" items="${ users }">
										<tr align='center'>
											<td>${user.id }</td>
											<td>${user.name }</td>
											<td>${user.password }</td>
											<td>${user.birth }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</fieldset>
					</form:form>
				</td>
			</table>

		</div>
	</div>

	<!-- Foot -->
	<%@include file="../include/foot.jspf"%>

</body>
</html>