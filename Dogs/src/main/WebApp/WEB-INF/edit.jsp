<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/30/2022
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

<div class="text-center  d-flex flex-column  m-2"  >
    <div class="d-flex justify-content-evenly m-2">
        <h1 class="text-success">Edit Dog</h1>

    </div>



    <div class="d-flex  justify-content-center mt-lg-2">
        <%--@elvariable id="editedTravel" type="java"--%>

        <%--@elvariable id="editedDog" type="java"--%>
        <form:form action="/editDog/${editedDog.id}" method="put" modelAttribute="editedDog">

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
                    <form:label path="houseBroken" cssClass="align-top">Housebroken : </form:label>
                    <form:errors  cssClass="text-danger" path="houseBroken"/>
                    <form:radiobutton name="house" value="yes" path="houseBroken"/>Yes

                    <form:errors  cssClass="text-danger" path="houseBroken"/>
                    <form:radiobutton  name="house" value="no" path="houseBroken"/>No
                </p>
                <input type="submit" value="Update" class="btn btn-primary"/>
            </form:form>
     </div>
 </div>



</body>
</html>
