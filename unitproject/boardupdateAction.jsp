<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bodDAO" %>
<%@ page import="board.bod" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
<title>JSP BBS</title>
</head>
<body>
    <%
    	String userID = null;
    	if (session.getAttribute("userID") != null){
            userID = (String) session.getAttribute("userID");
    	}
    	if (userID == null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인하세요.')");
            script.println("location.href = 'signin'");    // 메인 페이지로 이동
            script.println("</script>");
    	}
    	int bodID = 0;
    	if (request.getParameter("bodID") != null){
    		bodID = Integer.parseInt(request.getParameter("bodID"));
    	}
    	if (bodID == 0)
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다')");
            script.println("location.href = 'board'");
            script.println("</script>");
        }
        bod bbs = new bodDAO().getbod(bodID);
        if (!userID.equals(bbs.getUserID())){
        	PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('권한이 없습니다.')");
            script.println("location.href = 'board'");
            script.println("</script>");
        }else{
    		if (request.getParameter("bodTitle") == null || request.getParameter("bodContent") == null
    				|| request.getParameter("bodTitle").equals("") || request.getParameter("bodContent").equals("")){
        		PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('모든 문항을 입력해주세요.')");
                script.println("history.back()");    // 이전 페이지로 사용자를 보냄
                script.println("</script>");
        	}else{
        		bodDAO bbsDAO = new bodDAO();
                int result = bbsDAO.update(bodID, request.getParameter("bodTitle"), request.getParameter("bodContent"));
                if (result == -1){ // 글수정 실패시
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("alert('글수정에 실패했습니다.')");
                    script.println("history.back()");    // 이전 페이지로 사용자를 보냄
                    script.println("</script>");
                }else{ // 글쓰기 성공시
                	PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("location.href = 'board'");    // 메인 페이지로 이동
                    script.println("</script>");    
                }
        	}	
    	}
    %>
 
</body>
</html>