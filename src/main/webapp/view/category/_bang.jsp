<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="content-table col-12" style="text-align: center;">
<thead>
	<tr>
		<th scope="col">Category ID</th>
		<th scope="col">Category name</th>
		<th>&nbsp;</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="item" items="${items}">
		<tr>
			<td class="align-middle">${item.id}</td>
			<td class="align-middle">${item.name}</td>
			<td class="align-middle">
			<a class="btn btn-warning acategory" href="/category/edit/${item.id}">Edit</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>