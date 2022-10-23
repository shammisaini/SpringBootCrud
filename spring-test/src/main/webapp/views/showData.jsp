<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Users</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
   
    
</head>

<body>
    <div class="container my-2">
        <div class="card">
            <div class="card-body">
                    <p class="my-5">
                        <a href="showForm" class="btn btn-primary"><i
       class="fas fa-user-plus ml-2"> Add Student</i></a>
                    </p>
                    <div class="col-md-10">
                            <table class="table table-striped table-responsive-md">
                                <thead>
                                    <tr>
                                    	<th>Name</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone No</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:forEach items="${employees}" var="emp">
                                    <tr>
                                    
                                      <td> ${emp.id}</td>
                                        <td>${emp.name}</td>
                                        <td>${emp.email}</td>
                                        <td>${emp.phoneNo}</td>
                                        <td><a href="/empedit/${emp.id}" class="btn btn-primary"><i class="fas fa-user-edit ml-2"></i></a></td>
                                        <td><a href="/empdelete/${emp.id}" class="btn btn-danger"><i class="fas fa-user-times ml-2"></i></a></td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                       

                    </div>
                </div>
            </div>
        </div>
   </body>

</html>