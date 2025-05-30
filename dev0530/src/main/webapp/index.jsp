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
<script>
function check() {
	var std_no = document.getElementById("std_no");
	var std_nm = document.getElementById("std_nm");
	var std_birth = document.getElementById("std_birth");
	var std_address = document.getElementById("std_address");
	
	if(std_no.value == "") {
		alert("std_no없음");
		std_no.focus();
		return false;
	}
	if(std_nm.value == "") {
		alert("std_nm없음");
		std_nm.focus();
		return false;
	}
	if(std_birth.value == "") {
		alert("std_birth없음");
		std_birth.focus();
		return false;
	}
	if(std_address.value == "") {
		alert("std_address없음");
		std_address.focus();
		return false;
	}
	alert("저장이 완료되었습니다.");
	return true;
}
</script>
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
	<h2>학생 등록</h2>
		<form action="index_action.jsp" method="get" onsubmit="return check()">
			<table border="1">
				<tr>
					<th>학번</th>
					<th><input name="std_no" id="std_no"></th>
				</tr>
				<tr>
					<th>이름</th>
					<th><input name="std_nm" id="std_nm"></th>
				</tr>
				<tr>
					<th>생년월일</th>
					<th><input name="std_birth" id="std_birth"></th>
				</tr>
				<tr>
					<th>주소</th>
					<th><input name="std_address" id="std_address"></th>
				</tr>
				<tr>
					<th colspan="2"><input value="등록" type="submit"></th>
				</tr>
			</table>
		</form>
	</section>
	<footer>Copyright&copy2021</footer>
</body>
</html>