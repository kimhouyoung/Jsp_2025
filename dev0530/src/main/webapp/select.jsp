<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0530.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql ="select std_no, std_nm, to_char(to_date(std_birth, 'yyyymmdd'),'yyyy-mm-dd'), std_address, nvl2(att_yn, decode(att_yn, 'Y', '출석', 'N', '결석'), '미등록') from tbl_std_202105 s left outer join tbl_att_202105 a on a.att_std_no = s.std_no order by s.std_no asc";
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
		<h2>학생현황</h2>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>주소</th>
				<th>출결여부</th>
			</tr>
			<%while(rs.next()) {%>
			<tr>
				<th><%=rs.getString(1) %></th>
				<th><%=rs.getString(2) %></th>
				<th><%=rs.getString(3) %></th>
				<th><%=rs.getString(4) %></th>
				<th><%=rs.getString(5) %></th>
			</tr>
			<%} %>
		</table>
	</section>
	<footer>Copyright&copy2021</footer>
</body>
</html>