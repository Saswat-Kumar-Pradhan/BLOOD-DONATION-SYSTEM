<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Sign Up</title>
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
      <!-- Sign Up page -->
				<%
				String msg = request.getParameter("msg");
				if("valid".equals(msg)){
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
			                    <div class="icon-box2">
			                        <i class="material-icons">&#xE876;</i>
			                    </div>
			                </div>
			                <h4 class="text-center">Successful!</h4>
			                <br><br>
			                <div class="modal-body">
			                    <p class="text-center">Registration completed successfully.</p>
			                </div>
			                <div class="modal-footer">
			                    <button class="btn btn2 btn-block" data-dismiss="modal">OK</button>
			                </div>
			            </div>
			        </div>
			    </div>	
				<%
				}
				%>
				<%
				if("invalid".equals(msg)){
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
			                        <i class="material-icons">&#xE876;</i>
			                    </div>
			                </div>
			                <h4 class="text-center">Invalid!</h4>
			                <br><br>
			                <div class="modal-body">
			                    <p class="text-center">Invalid input !!!! Please try again.</p>
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
	<form action="adminsignupaction.jsp" method="post">
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
                            <div class="contentBx">
                                <div class="formBx">
                                    <h2>Sign up</h2>
                                    <form>
                                        <div class="inputBx">
                                            <span>Hospital Name</span>
                                            <input type="text" name="HospitalName">
                                        </div>
                                        <div class="inputBx">
                                            <span>Email I'd</span>
                                            <input type="email" name="Email">
                                        </div>
                                        <div class="inputBx">
                                            <span>Password</span>
                                            <input type="password" name="password">
                                        </div>
                                        <div class="inputBx">
                                            <span>Conform Password</span>
                                            <input type="password" name="cpassword">
                                        </div>
                                        <div class="inputBx">
                                            <input type="submit" value="Sign up" name="">
                                        </div>
                                        <div class="inputBx">
                                            <p>All ready have a account? <a href="adminlogin.jsp">Log in</a></p>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1"></div>
    </div>
    </form>
</body>
</body>
</html>