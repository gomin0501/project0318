<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h2>·후보자 등수·</h2>
<table border=1 class="vote">
<%@ include file="dbconn.jsp" %>
	<tr>
		<th>후보번호</th>
		<th>성명</th>
		<th>총투표건수</th>
	</tr>
<%
	//database에서 데이터 가져오기
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
try{
	String sql="select a.m_no,m_name,count(*) as total from member0318 a,vote0318 b where a.m_no=b.m_no group by a.m_no,m_name order by total desc";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	while(rs.next()){
		String no=rs.getString(1);
		String name=rs.getString(2);
		String count=rs.getString(3);
	%>
	
	<tr>
		<td><%=no %></td>
		<td><%=name %></td>
		<td><%=count %></td>
	</tr>
<% }
}catch(Exception e){
	System.out.println("읽기 오류");
	e.printStackTrace();
}%>
		
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>