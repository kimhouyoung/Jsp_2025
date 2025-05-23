<%@page import="java.sql.ResultSet"%>
<%@page import="dev0522.db"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = db.getConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "select resv_no, resv_name, substr(resv_phone, 1, 3), substr(resv_phone, 8, 4),  to_char(to_date(resv_to_ymd, 'yyyymmdd'), 'yyyy/mm/dd') || '-' || to_char(to_date(resv_to_ymd, 'yyyymmdd'), 'yyyy/mm/dd'), ro.rm_number, decode(rm_type, 'a', '2인실', 'b', '4인실') from reservation_tbl_202305 r join room_tbl_202305 ro on ro.rm_number = r.resv_rm_number order by resv_no";
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
		<h2>객실예약현황</h2>
		<table border=1>
			<tr>
				<th>예약번호</th>
				<th>예약자성명</th>
				<th>예약자전화번호</th>
				<th>예약기간</th>
				<th>객실번호</th>
				<th>객실타입</th>
			</tr>
			<%while(rs.next()){ %>
			<tr>
				<th><%=rs.getString(1) %></th>
				<th><%=rs.getString(2) %></th>
				<th><%=rs.getString(3) %>-****-<%=rs.getString(4) %></th>
				<th><%=rs.getString(5) %></th>
				<th><%=rs.getString(6) %></th>
				<th><%=rs.getString(7) %></th>
			</tr>
			<%} %>
		</table>
	</section>
	<footer> SDHS Copyright&copy2023 All rights reserved. </footer>
</body>
</html>