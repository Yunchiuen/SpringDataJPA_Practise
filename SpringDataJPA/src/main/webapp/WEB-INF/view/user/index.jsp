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
				<h2>CRUD</h2>
			</div>

			<table>
				<td valign="top">
					<!-- User 表單 --> 
					<form:form class="pure-form" 
							   modelAttribute="user"
							   method="POST"
							   action="${pageContext.request.contextPath }/mvc/user/">
						<fieldset>
							<legend>User form</legend>
							<form:input path="id" readonly="true" />
							<p />
							<form:input path="name" placeholder="請輸入使用者名稱" />
							<p />
							<form:input path="password" placeholder="請輸入密碼" />
							<p />
							<form:input path="birth" type="date" />
							<p />
							<input type="text" 
								   id="_method"
								   name="_method"
								   readonly="true" 
								   value="${ _method }" />
							<p />
							<button type="submit" 
									class="pure-button pure-button-primary">
									${ action }
							</button>

							<button type="reset" class="pure-button pure-button-primary">reset</button>
						</fieldset>
					</form:form>
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
										<th>Update</th>
										<th>Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="user" items="${ users }">
										<tr align='center'>
											<td>${user.id }</td>
											<td>${user.name }</td>
											<td>${user.password }</td>
											<td>${user.birth }</td>
											<td>
											<button type="button"
													onclick="location.href='${pageContext.request.contextPath}/mvc/user/${user.id }';"
													class="pure-button pure-button-primary">
													Update
											</button>
											</td>
											<td>
											<button type="button"
													onclick="location.href='${pageContext.request.contextPath}/mvc/user/delete/${user.id }';"
													class="pure-button pure-button-primary">
													delete
											</button>
											</td>
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