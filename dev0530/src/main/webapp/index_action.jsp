<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0530.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = db.getConnection();
PreparedStatement pstmt = null;
String std_no = request.getParameter("std_no");
String std_nm = request.getParameter("std_nm");
String std_birth = request.getParameter("std_birth");
String std_address = request.getParameter("std_address");

String sql = "insert into tbl_std_202105 values (?,?,?,?)";

pstmt = conn.prepareStatement(sql);
pstmt.setString(1, std_no);
pstmt.setString(2, std_nm);
pstmt.setString(3, std_birth);
pstmt.setString(4, std_address);

int rs = pstmt.executeUpdate();
if(rs > 0) {
	response.sendRedirect("select.jsp");
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