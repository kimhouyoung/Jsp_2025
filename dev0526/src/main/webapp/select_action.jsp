<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0526.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = DB.getConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
String p_id = request.getParameter("p_id");

String sql = "select p_id, p_name, sum(decode(g_fg, 1, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 1, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 2, decode(m_rank, 3, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 1, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 2, 1, 0), 0)), sum(decode(g_fg, 3, decode(m_rank, 3, 1, 0), 0)) from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id where p.p_id = ? group by p_id, p_name";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, p_id);

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

		<%
		if (rs.next()) {
		%>
		<h2><%=p_id%>님의 메달현황
		</h2>
		<table border=1>
			<tr>
				<th>선수id</th>
				<th>선수명</th>
				<th>올림픽금메달</th>
				<th>올림픽은메달</th>
				<th>올림픽동메달</th>
				<th>세계선수권 금메달</th>
				<th>세계선수권 은메달</th>
				<th>세계선수권 동메달</th>
				<th>아시안게임 금메달</th>
				<th>아시안게임 은메달</th>
				<th>아시안게임 동메달</th>
			</tr>
			<tr>
				<th><%=rs.getString(1)%></th>
				<th><%=rs.getString(2)%></th>
				<th><%=rs.getString(3)%></th>
				<th><%=rs.getString(4)%></th>
				<th><%=rs.getString(5)%></th>
				<th><%=rs.getString(6)%></th>
				<th><%=rs.getString(7)%></th>
				<th><%=rs.getString(8)%></th>
				<th><%=rs.getString(9)%></th>
				<th><%=rs.getString(10)%></th>
				<th><%=rs.getString(11)%></th>
			</tr>
		</table>
		<%
		} else {
		%>
		<h2><%=p_id%>
			님과 일치한 데이터가 없습니다.
		</h2>
		<a href="index.jsp">돌아가기</a>
		<%
		}
		%>
	</section>
	<footer>copyright&copy2024 All rights reserved</footer>

</body>
</html>