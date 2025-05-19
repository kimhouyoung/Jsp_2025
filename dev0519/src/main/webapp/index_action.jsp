<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0519.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	Connection conn = db.getConnection();
	PreparedStatement pstmt = null;
	
	String userid = request.getParameter("userid");
	String usernm = request.getParameter("usernm");
	String passwd = request.getParameter("passwd");
	String jumin = request.getParameter("jumin");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String jobcd = request.getParameter("jobcd");
	String mailrcv = request.getParameter("mailrcv");
	String intro = request.getParameter("intro");
	
	if(mailrcv == null) {
		mailrcv = "N";
	}
	String sql = "insert into tbl_guest values (?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, usernm);
	pstmt.setString(3, passwd);
	pstmt.setString(4, jumin);
	pstmt.setString(5, gender);
	pstmt.setString(6, address);
	pstmt.setString(7, jobcd);
	pstmt.setString(8, mailrcv);
	pstmt.setString(9, intro);
	
	int rs = pstmt.executeUpdate();
	if(rs > 0 ) {
		response.sendRedirect("select.jsp");
	}else {
		response.sendRedirect("main.jsp");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>