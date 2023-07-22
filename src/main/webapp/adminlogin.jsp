<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="css/adminstyle.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/popup.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="" class="logo"></a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Request</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Certificate</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="FAQ.jsp">FAQ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#"><img src="images/clipart153157-white.png" alt="" class="profile"></a>
                </li>
            </ul>
        </div>
    </nav>
      <!-- Login page -->
  <%
	String msg = request.getParameter("msg");
	if ("invalid".equals(msg)) {
	%>
	<script>
        $(document).ready(function() {
            $("#myModal").modal('show');
        });
    </script>
	<!-- Modal HTML -->
	<div id="myModal" class="modal fade">
        <div class="modal-dialog modal-confirm">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="icon-box">
                        <i class="material-icons">close</i>
                    </div>
                </div>
                <h4 class="text-center">Invalid!</h4>
                <br><br>
                <div class="modal-body">
                    <p class="text-center">Invalid Email ID and password.</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn1 btn-block" data-dismiss="modal">RETRY</button>
                </div>
            </div>
        </div>
    </div>
	<%
	}
	%>
	<form action="adminloginaction.jsp" method="post">
    <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1"></div>
        <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10">
            <br><br>
            <div class="mainbox">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-0 col-xs-0">
                        <img src="images\Admin.png" alt="" class="adminpic">
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                        <div class="box2" style=" background-image: url(images/adminback.png);">
                            <br><br><br>
                            <div class="contentBx">
                                <div class="formBx">
                                    <h2>Login</h2>
                                    <form>
                                        <div class="inputBx">
                                            <span>Email ID</span>
                                            <input type="text" name="Email">
                                        </div>
                                        <div class="inputBx">
                                            <span>Password</span>
                                            <input type="password" name="password">
                                        </div>
                                        <div class="remember">
                                            <label><input type="checkbox" name=""> Remember me</label>
                                        </div>
                                        <div class="inputBx">
                                            <input type="submit" value="Sign in" name="">
                                        </div>
                                        <div class="inputBx">
                                            <p>Don't have an account? <a href="adminsignup.jsp">Sign up</a></p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <br><br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1">
        </div>
    </div>
    </form>
</body>
</html>