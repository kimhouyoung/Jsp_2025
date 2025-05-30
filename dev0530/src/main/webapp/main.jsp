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
		<h1>(서버프로그램구현 수행평가 2차)출석부 관리 프로그램 ver2021-05</h1>
	</header>
	<nav>
		<ul>
			<li><a href="index.jsp">학생등록</a></li>
			<li><a href="select.jsp">학생현황</a></li>
			<li><a href="main.jsp">홈으로</a></li>
		</ul>
	</nav>
	<section>
	<h2>서버프로그램구현</h2>
		<p>학생들의 출석부를 관리하기 위한 프로그램 구현 과제입니다.
		<p>학생등록과 학생현황 관리 기능을 구현하였습니다.
	</section>
	<footer>Copyright&copy2021</footer>
</body>
</html>