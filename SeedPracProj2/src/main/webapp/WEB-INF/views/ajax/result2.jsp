<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.seed.seedprac.MemberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
		//request.getParameter("태그의 name")
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		//out.println("id:"+userid+",pw:"+passwd);
		MemberDAO dao=new MemberDAO();
		//DTO만들지 않고도 작업가능하다.
		String result=dao.login(userid, passwd);
		if (result != null) {//로그인 성공
			out.println(result + "님 환영합니다.");
		} else {//로그인 실패
			out.println("아이디 또는 비밀번호가 일치하지 않습니다.");
		} 
	%> --%>
</body>
</html>