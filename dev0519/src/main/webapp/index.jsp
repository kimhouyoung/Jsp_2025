<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script>
function check() {
	var userid = document.getElementById("userid");
	var usernm = document.getElementById("usernm");
	var passwd = document.getElementById("passwd");
	var jumin = document.getElementById("jumin");
	var gender = document.getElementById("gender");
	var address = document.getElementById("address");
	var jobcd = document.getElementById("jobcd");
	var mailrcy = document.getElementById("mailrcy");
	var intro = document.getElementById("intro");
	
	if(userid.value == "") {
		alert('userid 없음');
		userid.focus();
		return false;
	}
	if(usernm.value == "") {
		alert('usernm 없음');
		usernm.focus();
		return false;
	}
	if(passwd.value == "") {
		alert('passwd 없음');
		passwd.focus();
		return false;
	}
	if(jumin.value == "") {
		alert('jumin 없음');
		jumin.focus();
		return false;
	}
	if(gender.value == "") {
		alert('gender 없음');
		gender.focus();
		return false;
	}
	if(address.value == "") {
		alert('address 없음');
		address.focus();
		return false;
	}
	if(jobcd.value == "none") {
		alert('jobcd 없음');
		jobcd.focus();
		return false;
	}
	if(mailrcy.value == "") {
		alert('mailrcy 없음');
		mailrcy.focus();
		return false;
	}
	if(intro.value == "") {
		alert('intro 없음');
		intro.focus();
		return false;
	}
	
	alert("성공")
	return true;
}
</script>
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
		<h2>회원가입</h2>
		<form action="index_action.jsp" method="get" onsubmit="return check()">
			<table border=1>
				<tr>
					<th>아이디</th>
					<th><input name="userid" id="userid"></th>
				</tr>
				<tr>
					<th>성명</th>
					<th><input name="usernm" id="usernm"></th>
				</tr>
				<tr>
					<th>암호</th>
					<th><input name="passwd" id="passwd" type="password"></th>
				</tr>
				<tr>
					<th>주민번호</th>
					<th><input name="jumin" id="jumin"></th>
				</tr>
				<tr>
					<th>성별</th>
					<th>남<input type="radio" name="gender" id="gender" value="1" checked="checked">여<input
						type="radio" name="gender" id="gender" value="2"></th>
				</tr>
				<tr>
					<th>주소</th>
					<th><input name="address" id="address"></th>
				</tr>
				<tr>
					<th>직업</th>
					<th><select name="jobcd" id="jobcd">
					<option value="none">==직업을 선택하세요==</option>
					<option value="1">학생</option>
					<option value="2">회사원</option>
					<option value="3">공무원</option>
					<option value="4">군인</option>
					<option value="5">기타</option>
					</select></th>
				</tr>
				<tr>
					<th>메일수신</th>
					<th>동의함<input name="mailrcy" id="mailrcy" type="checkbox" value="Y"></th>
				</tr>
				<tr>
					<th>자기소개</th>
					<th><textarea name="intro" id="intro"></textarea></th>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="가입"></th>
				</tr>
				
			</table>
		</form>
	</section>
	<footer> HRDOKREA Copyringht&copy2021 All rights reserved.
		Human Resourees Development Service of Korea </footer>
</body>
</html>