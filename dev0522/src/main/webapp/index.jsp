<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0522.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = db.getConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "select max(resv_no + 1) from reservation_tbl_202305";
pstmt = conn.prepareStatement(sql);

rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function check() {

	 var resv_no = document.getElementById("resv_no");
	 var resv_name = document.getElementById("resv_name");
	 var resv_phone = document.getElementById("resv_phone");
	 var resv_from_ymd = document.getElementById("resv_from_ymd");
	 var resv_to_ymd = document.getElementById("resv_to_ymd");
	 var resv_rm_number = document.getElementById("resv_rm_number");
	 
	 if(resv_no.value == ""){
		 alert("resv_no다시");
		 resv_no.focus();
		 return false;
	 }
	 if(resv_name.value == ""){
		 alert("resv_name다시");
		 resv_name.focus();
		 return false;
	 }
	 if(resv_phone.value == ""){
		 alert("resv_phone다시");
		 resv_phone.focus();
		 return false;
	 }
	 if(resv_from_ymd.value == ""){
		 alert("resv_from_ymd다시");
		 resv_from_ymd.focus();
		 return false;
	 }
	 if(resv_to_ymd.value == ""){
		 alert("resv_to_ymd다시");
		 resv_to_ymd.focus();
		 return false;
	 }
	 
	 alert("저장이 완료되었습니다.");
	 
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

th {
display: flex;
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
		<h2>객실예약등록</h2>
		<form action="index_action.jsp" method="get" onsubmit="return check()">
			<table>
<%while(rs.next()) { %>
				<tr>
					<td>예약번호(자동채번)</td>
					<th><input name="resv_no" id="resv_no" value="<%=rs.getString(1)%>"></th>
				</tr>
				<%} %>
				<tr>
					<td>예약자 성함</td>
					<th><input name="resv_name" id="resv_name"></th>
				</tr>
				<tr>
					<td>예약자 전화번호</td>
					<th><input name="resv_phone" id="resv_phone">(하이픈 미입력)</th>
				</tr>
				<tr>
					<td>예약기간</td>
					<th><input name="resv_from_ymd" id="resv_from_ymd">부터<input
						name="resv_to_ymd" id="resv_to_ymd">까지</th>
				</tr>
				<tr>
					<td>예약객실번호</td>
					<th><select name="resv_rm_number">
							<option value="101">101호</option>
							<option value="102">102호</option>
							<option value="103">103호</option>
							<option value="104">104호</option>
							<option value="201">201호</option>
							<option value="202">202호</option>
							<option value="203">203호</option>
							<option value="204">204호</option>
					</select></th>
				</tr>
				<tr>
					<td colspan="10"><input type="submit" value="등록"><input
						type="reset" value="다시쓰기"></td>
				</tr>
			</table>
		</form>
	</section>
	<footer> SDHS Copyright&copy2023 All rights reserved. </footer>
</body>
</html>