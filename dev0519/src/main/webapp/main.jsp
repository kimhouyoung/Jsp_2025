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
		<h1>(과정평가형 정보처리산업기사) 회원관리 프로그램 ver 2021-19</h1>
	</header>
	<nav>
		<ul>
			<li><a href="index.jsp">회원가입</a>
			<li><a href="select.jsp">회원목록</a>
			<li><a href="find_action.jsp">회원검색</a>
			<li><a href="main.jsp">홈으로</a>
		</ul>
	</nav>
	<section>
		<h2>과정평가형 자격 CBQ</h2>
		<p>국가직무능력표준 (NCS:National Competency Standerds)으로 설계된 교육 훈련과정을 충실히 이수한 후, 내부 외부 평가를 거쳐 일정 합격 기준을 충죽하는 교육 훈련성에게 국가기술자격을 부여하는 제도
		<p>산업현장 중심의 교육평가로 더 커지는 능력!<br>
		<p>알고 있는 것에 할 수 있는 것을 더하는<br>
		<p>과졍평가형 자격은<br>
		<p>현장 중심형 인재육성을 지원 합니다.<br>
		
	</section>
	<footer>
	HRDOKREA Copyringht&copy2021 All rights reserved. Human Resourees Development Service of Korea
	</footer>
</body>
</html>