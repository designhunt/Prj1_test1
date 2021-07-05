<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join.css" />
</head>
<body>
<h3>join</h3>
<h3>회원가입</h3>
<form action="joinProc.jsp">
	<p style="color: red">
	<%
		if(request.getAttribute("errors")!=null){
		List<String> errors=(List)request.getAttribute("errors");
		for(int i=0; i<errors.size(); i++){
	%>
		<%=errors.get(i) %> <br />
	
	<%		
		}	 
		}
	%>
	
	</p>

	<lable for="id">아이디</lable>
	<input type="text" name="id" />
	<input type="button" value="중복확인" /> <br />
	<lable for="">비밀번호</lable>
	<input type="text" name="pwd"/> <br />
	<lable for="">비밀번호확인</lable>
	<input type="text" name="pwd2"/> <br />
	<lable for="">이름</lable>
	<input type="text" name="name"/> <br />
	<lable for="">성별</lable>
	<select name="gender" >
		<option value="남성">남성</option>
		<option value="여성">여성</option>
	</select><br />
	<lable for="">생년월일</lable>
	<input type="text" name="year" size="5"/>년
	<input type="text" name="month" size="5"/>월
	<input type="text" name="day" size="5"/>일
	
	<input type="radio" name="IsLunar" value="Solar" checked />양력
	<input type="radio" name="IsLunar" value="IsLunar"  />음력 <br />
	
	<lable for="">핸드폰 번호</lable>
	<input type="tel" name="cphone"/> 예)010-1111-1234<br />
	<lable for="">이메일</lable>
	<input type="email" name="email"/> <br />
	<lable for="">취미</lable>
	<input type="checkbox" name="habit" value="music" />음악 
	<input type="checkbox" name="habit" value="movie" />영화 
	<input type="checkbox" name="habit" value="trip" />여행 
	<input type="submit" value="확인" />
</form>

</body>
</html>