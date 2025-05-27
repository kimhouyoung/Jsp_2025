<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dev0526.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection conn = DB.getConnection();
PreparedStatement pstmt = null;

String p_id = request.getParameter("p_id");
String p_name = request.getParameter("p_name");

String sql = "insert into tbl_player_202408 values (?, ?)";
pstmt.setString(1, p_id);
pstmt.setString(2, p_name);
pstmt = conn.prepareStatement(sql);
int rs = pstmt.executeUpdate();
if(rs > 0) {
	response.sendRedirect("select.jsp");
}else {
	response.sendRedirect("index.jsp");
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