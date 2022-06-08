<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="content-table col-12" style="text-align: center;">
<thead>
	<tr>
		<th scope="col">Username</th>
		<th scope="col">Full name</th>
		<th scope="col">Email</th>
		<th scope="col">Images</th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${items}">
		<tr>
			<td class="align-middle">${item.username}</td>
			<td class="align-middle">${item.fullname}</td>
			<td class="align-middle">${item.email}</td>
			<td class="align-middle">${item.photo}</td>
			<td class="align-middle">
				<a href="/editac/edit/${item.username}">Edit</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>