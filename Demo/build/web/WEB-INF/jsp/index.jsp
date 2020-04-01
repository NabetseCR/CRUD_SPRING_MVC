<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>CRUD-DEMO-SPRINGMVC</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-primary" href="add.htm">New Person</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                <th>EMAIL</th>
                                <th>NATIONALITY</th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="data" items="${list}">
                                <tr>
                                    <th>${data.id}</th>
                                    <th>${data.name}</th>
                                    <th>${data.email}</th>
                                    <th>${data.nationality}</th>
                                    <th>
                                        <a href="edit.htm?id=${data.id}" class="btn btn-warning">Edit</a>
                                        <a href="delete.htm?id=${data.id}" class="btn btn-danger">Delete</a>
                                    </th>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
