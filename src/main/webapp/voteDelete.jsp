<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	PreparedStatement pstmt=null;
	String name=request.getParameter("name");
	
	String sql="delete from vote0318 where v_name=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,name);
	pstmt.executeUpdate();
%>
<script>
	alert("삭제되었습니다.");
	location.href="voteSelect.jsp";
</script>
</body>
</html>