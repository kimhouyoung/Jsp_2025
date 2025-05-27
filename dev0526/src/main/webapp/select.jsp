<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0526.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style: none;
}

header {
	width: 100%;
	height: 100px;
	background-color: black;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
}

nav>ul {
	display: flex;
	background-color: gray;
}

nav>ul>li {
	margin: 20px;
	color: white;
	padding-left: 30px;
}

h2 {
	text-align: center;
	margin: 50px;
}

table {
	margin: auto;
	text-align: center;
}

td, th {
	padding: 10px;
	border: 1px solid black;
}

footer {
	width: 100%;
	height: 70px;
	bottom: 0;
	background-color: black;
	color: white;
	position: fixed;
	bottom: 0;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
<body>
	<header>
		<h1>과정평가형 정보처리산업기사 연습문제(실전2)</h1>
	</header>
	<nav>
		<ul>
			<li><a href="#">국가대표선수등록</a></li>
			<li><a href="#">국가대표선수조회</a></li>
			<li><a href="#">포상금지급현황</a></li>
			<li><a href="#">선수별연금포인트현황</a></li>
			<li><a href="#">홈으로</a></li>
		</ul>
	</nav>
	<section>
		<h2>국가대표선수 등록</h2>
		<form action="select_action.jsp" method="get">
			<table border=1>
				<tr>
					<th>조회</th>
					<th><input name="p_id"></th>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="조회"></th>
				</tr>
			</table>
		</form>
	</section>
	<footer>copyright&copy2024 All rights reserved</footer>
</body>
</html>