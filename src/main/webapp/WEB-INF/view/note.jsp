<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>NoteS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<form:form action ="/${note.id}" modelAttribute="note">
    <h2 class="text-center">${note.title}</h2>
    <form:hidden path="id"/>
    <form:hidden path="title"/>
    <form:textarea cssClass="form-control " path="content"/>
    <br>
    <input type="submit" class="btn btn-primary btn-lg float-end m-1" value="Сохранить">
    <input type="button" class="btn btn-secondary btn-lg float-end m-1" value="Не сохранять"  onclick="window.location.href='/'"/>
</form:form>
</body>
</html>
