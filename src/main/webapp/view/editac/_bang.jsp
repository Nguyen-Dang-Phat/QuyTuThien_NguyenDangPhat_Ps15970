<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table class="content-table col-12" style="text-align: center;">
<style>
	.acategory{
		box-shadow: 1px 0px 10px gray;
	}
	.content-table{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    min-width: 400px;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
}
.content-table thead tr{
    background-color: #009879;
    color: #ffff;
    text-align: left;
    font-weight: bold;
}
.content-table th, .content-table td{
    padding: 9px 12px;
    
}
.content-table td{
    font-size: 17px;
    text-align: left;
}
.content-table table tbody tr{
    border: 1px solid #dddddd;
}
.content-table tbody tr:nth-of-type(even){
    background-color: #f3f3f3;
}
.content-table tbody tr:last-of-type{
    border-bottom: 2px solid #008979;
}
</style>
<thead>
	<tr>
		<th scope="col">Username</th>
		<th scope="col">Password</th>
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
			<td class="align-middle">${item.password}</td>
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