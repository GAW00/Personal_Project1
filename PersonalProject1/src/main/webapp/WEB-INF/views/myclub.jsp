<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	</head>
	<body>
		<div id="article" style="height: auto;">
                       <c:forEach items="${clublist}" var="list"> 요기까지함!!!!!!!!
                           <div style="width: 300px; height: 50%; margin-left: 30px; margin-top: 30px; float: left;">
                               <div> 
                               	<a href="Gu_ProductView?procode=${dto.procode}">
                     					<img class="image" src=${dto.proimg} alt="제품사진" width="100%" height="300px" style="border-radius: 10%">
                               	</a>
                               </div>
                               <div> 
                               	<a href="Gu_ProductView?procode=${dto.procode}">${dto.proname}</a>
                               	</div>
                               <div style="font-size: small;">${dto.proprice} &#8361;</div>
                           </div>
                       </c:forEach>
                   </div>
	</body>
</html>