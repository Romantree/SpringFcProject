<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<table style="width:700px">
<c:forEach var="row" items="${list}">   
    <c:set var="str"
value="${fn:replace(row.replytext,'<','&lt;') }" />
    <c:set var="str"
value="${fn:replace(str,'>','&gt;') }" />    
    <c:set var="str"  
value="${fn:replace(str,'  ','&nbsp;&nbsp;')}" />
    <c:set var="str"
value="${fn:replace(str,newLineChar,'<br>') }" />    
    
    <tr>
        <td>
            ${row.name}
            (<fmt:formatDate value="${row.regdate}"
                 pattern="yyyy-MM-dd a HH:mm:ss" /> )<br>
            ${str}
        </td>
    </tr>
</c:forEach> 
</table>   
</body>

</html>