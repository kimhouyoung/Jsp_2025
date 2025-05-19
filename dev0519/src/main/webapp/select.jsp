<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0519.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select userid, usernm, substr(jumin, 1, 6), decode(gender, '1', '남자', '2', '여자'), decode(jobcd, '1', '학생', '2', '회사원', '3', '공무원', '4', '군인', '5', '기타'), intro from TBL_GUEST";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	%>
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
		<h2>회원목록</h2>
		<form action="index_action.jsp" method="get">
			<table border=1>
				<tr>
					<th>회원ID</th>
					<th>회원명</th>
					<th>생년월일</th>
					<th>성별</th>
					<th>직업</th>
					<th>자기소개</th>
				</tr>
				<%while(rs.next()) { %>
				<tr>
					<th><%=rs.getString(1) %></th>
					<th><%=rs.getString(2) %></th>
					<th><%=rs.getString(3) %></th>
					<th><%=rs.getString(4) %></th>
					<th><%=rs.getString(5) %></th>
					<th><%=rs.getString(6) %></th>
				</tr>
				<%} %>
			</table>
		</form>
	</section>
	<footer> HRDOKREA Copyringht&copy2021 All rights reserved.
		Human Resourees Development Service of Korea </footer>
</body>
</html>