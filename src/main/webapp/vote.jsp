<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
	<form name="form" method="post" action="voteProcess.jsp">
		<h2>·투표하기·</h2>
	<table border="1">
	    <tr>
	      <th>주민번호</th>
	      <td >
	      <input type="text" name="jumin"> 예 : 8906153154726
	      </td>
	    </tr>
	    <tr>
	      <th>성 명</th>
	      <td ><input type="text" name="name"></td>
	    </tr>
	    <tr>
	      <th>투표번호</th>
	      <td >
	      	<select name="no" class="drop">
				<option></option>
	      		<option value="1">[1]김후보</option>
	      		<option value="2">[2]이후보</option>
	      		<option value="3">[3]박후보</option>
	      		<option value="4">[4]조후보</option>
	      		<option value="5">[5]최후보</option>
	      	</select>
	      </td>
	    </tr>
	    <tr>
	    	<th>투표시간</th>
	    	<td><input type="text" name="time" placeholder="예)0930"></td>
	    </tr>
	    <tr>
	    	<th>투표장소</th>
	    	<td><input type="text" name="area" placeholder="예)제1투표장"></td>
	    </tr>
	    <tr>
	      <th>유권자확인</th>
	      <td id="confirm">
	      <input type="radio" name="confirm" value="Y" class="confirm">확인
	      <input type="radio" name="confirm" value="N" class="confirm">미확인
	      </td>
	    </tr>
	    
	    <tr id="button">
	    	<td colspan="2">
	    	<button class="check" onclick="check()">투표하기</button>
	    	<button class="check" type="reset">다시하기</button>
	    	</td>	    	
	    </tr>
	</table>
	</form>
<script src="voteForm.js"> </script>

</section>
<%@ include file="footer.jsp" %>
</body>
</html>