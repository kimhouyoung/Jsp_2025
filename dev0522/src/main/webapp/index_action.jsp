<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0522.db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Connection conn = db.getConnection();
PreparedStatement pstmt = null;
String resv_no = request.getParameter("resv_no");
String resv_name = request.getParameter("resv_name");
String resv_phone = request.getParameter("resv_phone");
String resv_from_ymd = request.getParameter("resv_from_ymd");
String resv_to_ymd = request.getParameter("resv_to_ymd");
String resv_rm_number = request.getParameter("resv_rm_number");


System.out.println(resv_no);
System.out.println(resv_name);
System.out.println(resv_phone);
System.out.println(resv_from_ymd);
System.out.println(resv_to_ymd);
System.out.println(resv_rm_number);
String sql = "insert into reservation_tbl_202305 values (?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, resv_no);
pstmt.setString(2, resv_name);
pstmt.setString(3, resv_phone);
pstmt.setString(4, resv_from_ymd);
pstmt.setString(5, resv_to_ymd);
pstmt.setString(6, resv_rm_number);

int rs = pstmt.executeUpdate();
if (rs > 0) {
	response.sendRedirect("select.jsp");
} else {
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