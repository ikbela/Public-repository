<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/30/2022
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ page isErrorPage="true" %>--%>


<html>
<head>
  <title>Travels</title>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

<h1 class="text-primary">All Dogs</h1>
<a href="/new">Add dog</a>
<div class="text-center">
  <table class="table table-striped">
    <tr>
      <th>Name</th>
      <th>Breed</th>
      <th>Age</th>
      <th>HouseBroken</th>
      <th>Action</th>
    </tr>
    <c:forEach items="${dogs}" var="dog">
      <tr>
        <td><a href="/showDetails/${dog.id}"><c:out value="${dog.name}"></c:out></a></td>
        <td><c:out value="${dog.breed}"></c:out></td>
        <td><c:out value="${dog.age}"></c:out></td>
        <td><c:out value="${dog.houseBroken}"></c:out></td>
        <td class="d-flex justify-content-around">

          <a href="/edit/${dog.id}">Edit</a>

          <form action="/delete/${dog.id}" method="post">
            <input type="hidden" name="_method" value="delete">
            <input type="submit" value="Delete" class="ml-2 btn-danger">
          </form>

        </td>
      </tr>
    </c:forEach>
  </table>
</div>


<%--@elvariable id="newTravel" type="java"--%>

<%--<div class="text-center">--%>
<%--  <h1 class="text-primary">Add an expense:</h1>--%>
<%--  <h4 class="text-danger">Descritption might not be blank.</h4>--%>
<%--  <form:form action="/addTravel" method="post" modelAttribute="newTravel">--%>
<%--    <p class="mb-3">--%>
<%--      <form:label path="expenses">Expenses : </form:label>--%>
<%--      <form:errors cssClass="text-danger"  path="expenses"/>--%>
<%--      <form:input path="expenses"/>--%>
<%--    </p>--%>
<%--    <p class="mb-3">--%>
<%--      <form:label path="vendor">Vendor : </form:label>--%>
<%--      <form:errors  cssClass="text-danger" path="vendor"/>--%>
<%--      <form:input path="vendor"/>--%>
<%--    </p>--%>
<%--    <p class="mb-3">--%>
<%--      <form:label path="amount">Amount : </form:label>--%>
<%--      <form:errors cssClass="text-danger" path="amount"/>--%>
<%--      <form:input type="number" step="0.01" path="amount"/>--%>
<%--    </p>--%>
<%--    <p class="mb-3">--%>
<%--      <form:label path="description" cssClass="align-top">Description : </form:label>--%>
<%--      <form:errors  cssClass="text-danger" path="description"/>--%>
<%--      <form:textarea path="description"/>--%>
<%--    </p>--%>
<%--    <input type="submit" value="Submit" class="btn btn-primary"/>--%>
<%--  </form:form>--%>
<%--</div>--%>


</body>
</html>


<%--<button class="btn btn-danger m-lg-2" onclick="/delete/${travel.id}">Delete</button>--%>