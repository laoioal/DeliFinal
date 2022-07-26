<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴고르기</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/map/chooseMenuCategory.css"/>" >
	<script src="<c:url value="/js/map/chooseMenuCategory.js"/>" type="text/javascript"></script>

</head>
   <body>
   <div id="space">
      <center>
        <br>
        <br>
               [ ${place.name} ] 주변 원하는 메뉴를 골라주세요
              <form action="<c:url value='/place/restaurant.dlv'/>" name="childForm" target="popupName"> 
               <!--  <form name="childForm">-->
                   <input type="hidden" id="cInput" value=""/>
                <input type = "hidden" name = "place_name" value="${place.name}" readonly/>
                    <br>
               <c:forEach items="${category}" var="category" >
                       
               
               <input type="radio" name="code" value="${category.code}" id="code" onclick="radioCheck('${category.code}')">${category.foodtype}<br>
                   
               </c:forEach>
               <br>
               <input type="hidden" id="choose" value=""/>
               <input type = "submit" id = "submitbtn" value="다음페이지" onclick= "window.close()" />
               </div>
      </center>
      	<script src="<c:url value="/js/faq/urlDelete.js"/>" type="text/javascript"></script>
            <script src="<c:url value="/js/map/submitbtn.js"/>" type="text/javascript"></script>
      
   </body>   
               
</html>
