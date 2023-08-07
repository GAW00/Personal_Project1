<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
		<div id="article" style="height: auto;">
            <c:forEach items="${clublist}" var="list">
                <div style="width: 300px; height: 50%; margin-left: 30px; margin-top: 30px; float: left;">
                    <div> 
                 		<a href="clubview?clubno=${list.clubno}">
								${list.clubname}<br>
                    			${list.leftover}<br>
                    			${list.chairman}
                 		</a>
                    </div>
                </div>
            </c:forEach>
        </div>
	</body>
</html>
<!-- 	private int clubno; -->
<!-- 	private String chairman; -->
<!-- 	private String clubname; -->
<!-- 	private int dues; -->
<!-- 	private String account; -->
<!-- 	private String accountbank; -->
<!-- 	private int leftover; -->
<!-- 	private String regulation; -->