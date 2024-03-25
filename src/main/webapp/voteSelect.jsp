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
<h2>·투표검수조회·</h2>
<table border=1 class="vote">
<%@ include file="dbconn.jsp" %>
<%
	//database에서 데이터 가져오기
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
try{
	String sql="select count(*) from vote0318";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	int cnt=0;
	if(rs.next()){
		cnt=rs.getInt(1);
	}else{
		cnt=0;
	}
	%>
	
<caption>총 <%=cnt %>명의 투표검수 조회가 있습니다.</caption>
	<tr>
		<th>성명</th>
		<th>생년월일</th>
		<th>나이</th>
		<th>성별</th>
		<th>후보번호</th>
		<th>투표시간</th>
		<th>유권자확인</th>
		<th>구분</th>
	</tr>

<%
	sql="select v_name,substr(v_jumin,1,2)||'.'||substr(v_jumin,3,2)||'.'||substr(v_jumin,5,2),substr(v_jumin,1,2),substr(v_jumin,7,1),m_no,substr(v_time,1,2)||':'||substr(v_time,3,2),v_confirm from vote0318";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	while(rs.next()){
		String name=rs.getString(1);
		String birth=rs.getString(2);
		int age=Integer.parseInt(rs.getString(3));
		String gender=rs.getString(4);
		//만나이 구하기
		if(gender.equals("1")||gender.equals("2")){age=2024-(1900+age);}
		else if(gender.equals("3")||gender.equals("4")){age=2024-(2000+age);}
		//성별구분하기
		if(gender.equals("1")||gender.equals("3")){gender="남";}	
		else if(gender.equals("2")||gender.equals("4")){gender="여";}
		String no=rs.getString(5);
		String time=rs.getString(6);
		String confirm=rs.getString(7);
		if(confirm.equals("Y")){confirm="확인";}
		else if(confirm.equals("N")){confirm="미확인";}
	
	%>

	<tr>
		<td><%=name %></td>
		<td><%=birth %></td>
		<td>만 <%=age %>세</td>
		<td><%=gender %></td>
		<td><%=no %></td>
		<td><%=time %></td>
		<td><%=confirm %></td>
		<td>
			<a href="voteUpdate.jsp?name=<%=name %>">수정</a>/
			<a href="voteDelete.jsp?name=<%=name %>"
			onclick="if(!confirm('정말로 삭제하겠습니까?')) return false;">삭제</a>
		</td>
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