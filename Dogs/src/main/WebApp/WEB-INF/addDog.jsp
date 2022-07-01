<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="text-center">
    <h1 class="text-primary">Add Dog:</h1>

    <%--@elvariable id="newDog" type="java"--%>
    <form:form action="/addDog" method="post" modelAttribute="newDog">
      <p class="mb-3">
        <form:label path="name">Name : </form:label>
        <form:errors cssClass="text-danger"  path="name"/>
        <form:input path="name"/>
      </p>
      <p class="mb-3">
        <form:label path="breed">Breed : </form:label>
        <form:errors  cssClass="text-danger" path="breed"/>
        <form:input path="breed"/>
      </p>
      <p class="mb-3">
        <form:label path="age">Age : </form:label>
        <form:errors cssClass="text-danger" path="age"/>
        <form:input type="number"  path="age"/>
      </p>
      <p class="mb-3">
<%--        per radiobutton krijo 2 te tille, jepi tipin radiobutton dhe i fut ne te njejtin emer, name dhe pastaj i jep value="yes" ose "no"--%>
        <form:label path="houseBroken" cssClass="align-top">Housebroken : </form:label>
        <form:errors  cssClass="text-danger" path="houseBroken"/>
        <form:radiobutton name="house" value="yes" path="houseBroken"/>Yes

        <form:errors  cssClass="text-danger" path="houseBroken"/>
        <form:radiobutton  name="house" value="no" path="houseBroken"/>No
      </p>
      <input type="submit" value="Add" class="btn btn-primary"/>
    </form:form>
  </div>
</body>
</html>
