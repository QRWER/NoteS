<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <title>NoteS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

    <h1 class="text-center">NoteS</h1>

        <div class="container-fluid">

            <c:forEach var="note" items="${allNotes}">
                <div class="row row-cols-3" style="margin-left: 33%">
                    <div class="col"> <p class="h3" style="word-wrap: break-word">${note.title}</p> </div>
                    <div class="col-md-auto"><input type="button" value="Посмотреть" onclick="window.location.href='/${note.id}'"/> </div>
                    <div class="col-md-auto"> <input type="button" value="Удалить" onclick="window.location.href='/delete/${note.id}'"/> </div>
                </div>
            </c:forEach>

        </div>

<br>

<div class="container" style="margin-left: 33%">
    <form:form action ="/" modelAttribute="newNote">
        <form:hidden path="id"/>
        <form:hidden path="content"/>
        Новая заметка <form:input path="title"/>
        <form:errors path="title"/>
        <input type="submit" value="Добавить">
    </form:form>
</div>

</body>
</html>
