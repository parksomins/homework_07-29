<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.koreait.db.Dbconn"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%
	request.setCharacterEncoding("UTF-8");
	if(session.getAttribute("userid") == null){
%>
	<script>
		alert('로그인 후 이용하세요');
		location.href='../login.jsp';
	</script>
<%
	}else{	
%>
<jsp:useBean id="board" class="com.koreait.board.BoardDTO"/>
<jsp:useBean id="dao" class="com.koreait.board.BoardDAO"/>
<jsp:setProperty property="idx" param="b_idx" name="board"/>
<jsp:setProperty property="title" param="b_title" name="board"/>
<jsp:setProperty property="content" param="b_content" name="board"/>
<jsp:setProperty property="file" param="b_file" name="board"/>
<%
	board.setIdx(Integer.parseInt(String.valueOf(session.getAttribute("idx"))));
	board.setUserid((String)session.getAttribute("userid"));

	if(dao.edit2(board) == 1){
%>
	<script>
	alert('수정되었습니다');
	location.href='view.jsp?b_idx=<%=board.getIdx()%>';
	</script>
<%
	}else{
%>
	<script>
		alert('회원정보 수정실패!');
		history.back();
	</script>
<%
	}
	}
%>
