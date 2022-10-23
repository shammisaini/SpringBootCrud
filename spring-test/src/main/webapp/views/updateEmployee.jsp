<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Update User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>

<body>
    <div class="container my-5">
        <h3> Update Student</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-8">
                    <form action="/empupdate/${employees.id}" method="post" >
                        <div class="row">
                         
                            <div class="form-group col-md-6">
                                <label for="name" class="col-form-label">Name</label> <input type="text" name="name" value="${employees.name}" class="form-control" id="name" placeholder="Name">
                            </div>
                            <div class="form-group col-md-8">
                                <label for="email" class="col-form-label">Email</label> <input type="text" value="${employees.email}" name="email" class="form-control" id="email" placeholder="Email"> 
                            </div>
                            <div class="form-group col-md-8">
                                <label for="phoneNo" class="col-form-label">Phone No</label> <input type="text"   value="${employees.phoneNo}" name="phoneNo"name="phoneNo" class="form-control" id="phoneNo" placeholder="phoneNo">
                               </div>

                            <div class="form-group col-md-8">
                                <input type="submit" class="btn btn-primary" value="Update Student">
                            </div>
                            
                        </div>
                       
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</body>

</html>