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
		<h1>(2023_서버_수행평가)객실예약 프로그램</h1>
	</header>
	<nav>
		<ul>
			<li><a href="index.jsp">객실예약등록</a></li>
			<li><a href="select.jsp">객실예약현황</a></li>
			<li><a href="main.jsp">홈으로</a></li>
		</ul>
	</nav>
	<section>
	<h2>객실예약 프로그램</h2>
	<p>본 과제는 객실에약 등록 및 현황조회 프로그램입니다.
	<p>메뉴는 객실예약등록, 객실예약현황, 홈으로가 존재합니다.
	<p>객실예약등록 메뉴에서 등록한 내역을 객실에약현황 메뉴에서 확인 할 수 있습니다.
	
	</section>
	<footer>
	SDHS Copyright&copy2023 All rights reserved.
	</footer>
</body>
</html>