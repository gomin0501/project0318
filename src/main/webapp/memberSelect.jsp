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
<h2>후보자 조회</h2>
<table border=1 class="table">
<%@ include file="dbconn.jsp" %>
<%
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		String sql="select count(*) from member0318";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		int cnt=0;
		if(rs.next()){
			cnt=rs.getInt(1);
		}else{
			cnt=0;
		}
		 %>
<caption>총 <%=cnt %>명의 후보자가 있습니다.</caption>
	<tr>
		<th>후보번호</th>
		<th>성명</th>
		<th>소속정당</th>
		<th>학력</th>
		<th>주민번호</th>
		<th>지역구</th>
		<th>대표전화</th>
		<th>구분</th>
	</tr>
<%
		sql="select m_no,m_name,member0318.p_code,p_school,m_jumin,m_city,p_tel1,p_tel2,p_tel3 from member0318,party0318 where member0318.p_code=party0318.p_code";
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			String no=rs.getString(1);
			String name=rs.getString(2);
			String code=rs.getString(3);
			String school=rs.getString(4);
			if(school.equals("1")){school="고졸";}
			else if(school.equals("2")){school="학사";}
			else if(school.equals("3")){school="석사";}
			else if(school.equals("4")){school="박사";}
			String jumin=rs.getString(5);
			String city=rs.getString(6);
			String tel=rs.getString(7)+"-"+rs.getString(8)+"-"+rs.getString(9);
		%>
	<tr>
		<td class="info"><%=no %></td>
		<td class="info"><%=name %></td>
		<td class="sudang"><%=code %></td>
		<td class="sudang"><%=school %></td>
		<td class="sudang"><%=jumin %></td>
		<td class="sudang"><%=city %></td>
		<td class="sudang"><%=tel %></td>
		<td class="sudang">
			<a href="memberUpdate.jsp?no=<%=no %>">수정</a> /
			<a href="memberDelete.jsp?no=<%=no %>"
			onclick="if(!confirm('삭제할까요?')) return false;">삭제</a>
		</td>
	</tr>	
	<% }
	}catch(Exception e){
		System.out.println("데이터베이스 읽기 오류");
		e.printStackTrace();
	}
%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>