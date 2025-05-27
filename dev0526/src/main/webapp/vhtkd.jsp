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

String sql = "select p_id, p_name, sum(case when g_fg = 1 and m_rank = 1 then 100 when g_fg = 1 and m_rank = 2 then 60 when g_fg = 1 and m_rank = 3 then 40 when g_fg = 2 and m_rank = 1 then 20 when g_fg = 2 and m_rank = 2 then 10 when g_fg = 2 and m_rank = 3 then 5 when g_fg = 3 and m_rank = 1 then 5 when g_fg = 3 and m_rank = 2 then 3 when g_fg = 3 and m_rank = 3 then 1 end) as sell from tbl_player_202408 p join tbl_medal_202408 m on m.m_p_id = p.p_id join tbl_game_202408 g on g.g_id = m.m_g_id group by p_id, p_name order by sell desc";
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
		<h2>포상금지급현황
		</h2>
		<table border=1>
			<tr>
				<th>선수id</th>
				<th>선수명</th>
				<th>포상금</th>
			</tr>
			<%while(rs.next()) { %>
			<tr>
				<th><%=rs.getString(1)%></th>
				<th><%=rs.getString(2)%></th>
				<th><%=rs.getString(3)%>만원</th>
			</tr>
			<%} %>
		</table>
	</section>
	<footer>copyright&copy2024 All rights reserved</footer>

</body>
</html>