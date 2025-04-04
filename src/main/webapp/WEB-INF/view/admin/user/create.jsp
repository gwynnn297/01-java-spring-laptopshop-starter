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
    <!-- mt: margin top -5: 5rem -->
     <!-- container thì luôn đi với row -->
      <!-- col-md-6 : 6 cột trên 12 cột trên máy tính col-12: tràn full 12 cột trên điện thoại mx-auto -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6 col-12 mx-auto">
                <h3>Create a user</h3>
                <hr />
                <!-- modelAttribute: convert dữ liệu từ view trả cho controller -->
                <form:form method="post" action="/admin/user/create " modelAttribute="newUser">
                    <div class="mb-3">
                      <label class="form-label">Email:</label>
                      <!-- path này tương đương với các các biến trong model và truyền dữ liệu này về đó  -->
                      <form:input type="email" class="form-control" path="email"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password:</label>
                        <form:input type="password" class="form-control" path="password"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Phone number:</label>
                        <form:input type="text" class="form-control" path="phone"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Full Name:</label>
                        <form:input type="text" class="form-control" path="fullName"/>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Address:</label>
                        <form:input type="text" class="form-control" path="address"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Create</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>