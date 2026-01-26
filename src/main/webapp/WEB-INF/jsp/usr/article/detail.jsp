<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTICLE DETAIL</title>
</head>
<body>

<h1>ARTICLE DETAIL</h1>
<hr />

<table border="1" cellspacing="0" cellpadding="5" style="width: 100%; border-collapse: collapse;">
	<tr>
		<th>ID</th>
		<td>${article.id}</td>
	</tr>
	<tr>
		<th>Registration date</th>
		<td>${article.regDate.substring(0,10)}</td>
	</tr>
	<tr>
		<th>Title</th>
		<td>${article.title}</td>
	</tr>
	<tr>
		<th>Member ID</th>
		<td>${article.memberId}</td>
	</tr>
	<tr>
		<th>Body</th>
		<td>${article.body}</td>
	</tr>
</table>

<hr />
<a href="/usr/article/list">목록으로</a>

</body>
</html>
