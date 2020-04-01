<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Edit</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Edit person</h4>
                </div> 
                    <div class="card-body">
                        <form method="POST">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control" value="${list[0].name}">
                            <label>Email</label>
                            <input type="text" name="email" class="form-control" value="${list[0].email}">
                            <label>Nationality</label>
                            <input type="text" name="nationality" class="form-control" value="${list[0].nationality}"><br>
                            <input type="submit" value="edit" class="btn btn-success">
                            <a href="index.htm">Back</a>
                        </form>
                    </div>
            </div>
        </div>
    </body>
</html>
