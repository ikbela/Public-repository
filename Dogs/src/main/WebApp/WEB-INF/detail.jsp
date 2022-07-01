<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/30/2022
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Details</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class=" d-flex flex-column  m-2 p-1"   >
    <div class="d-flex justify-content-around m-2">
        <h2 class="text-info">Dog's details</h2>

    </div>
    <div class="d-flex flex-column m-2   align-content-around">
        <p class="m-2 text-left ">Dog name : <c:out value="${details.name}"></c:out></p>
        <p class="m-2 text-left ">Breed : <c:out value="${details.breed}"></c:out></p>
        <p class="m-2 text-left ">Age : <c:out value="${details.age}"></c:out></p>
        <p class="m-2 text-left ">Housebroken : <c:out value="${details.houseBroken}"></c:out></p>
    </div>
    <a href="/">
       DashBoard
    </a>
</div>

</body>
</html>
