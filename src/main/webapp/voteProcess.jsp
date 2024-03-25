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
	//form데이터 가져오기
	String jumin=request.getParameter("jumin");
	String name=request.getParameter("name");
	String no=request.getParameter("no");
	String time=request.getParameter("time");
	String area=request.getParameter("area");
	String confirm=request.getParameter("confirm");
	
	
	//sql문(database table)에 값 넣기
	String sql="insert into vote0318 values(?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,jumin);//번호는 물음표 순서
	pstmt.setString(2,name);
	pstmt.setString(3,no);
	pstmt.setString(4,time);
	pstmt.setString(5,area);
	pstmt.setString(6,confirm);
	
	pstmt.executeUpdate();//실행
	
%>
<script>
	alert("등록이 완료되었습니다.");
	location.href="voteSelect.jsp";
</script>
</body>
</html>