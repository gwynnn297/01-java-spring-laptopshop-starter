<!-- set content type đó là file html -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- sử dụng jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- sử lý phần form -->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link rel="stylesheet" href="/css/demo.css"> -->
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 mx-auto">
                <div class="d-flex justify-content-between">
                    <h3>Table user</h3>
                    <a href="/admin/user/create" class="btn btn-primary">Create a user</a>
                </div>
                <hr>
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Email</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="user" items="${users1}">
                        <tr>
                          <th>${user.id}</th>
                          <td>${user.email}</td>
                          <td>${user.fullName}</td>
                          <td>
                            <button class="btn btn-success">View</button>
                            <button class="btn btn-warning">Update</button>
                            <button class="btn btn-danger">Delete</button>
                          </td>
                        </tr>
                      </c:forEach>
                        
                      
                    </tbody>
                  </table>
                
            </div>
        </div>
    </div>
    
</body>
</html>