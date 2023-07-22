<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Donor</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                    <a class="nav-link" href="Dashboard.jsp">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Add Doner</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="DonersList.jsp">Doners' List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ManageStock.jsp">Manage Stock</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="RequestForBlood.jsp">Blood Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="RequestHistory.jsp">Request History</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
      <!-- Add new donor page -->
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
			                    <p class="text-center">Donor is successfully registered.</p>
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
	<form action="AddNewDonorAction.jsp" method="post">
    <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-1 col-xs-1"></div>
        <div class="col-lg-8 col-md-8 col-sm-10 col-xs-10">
            <br><br>
            <div class="mainbox">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-0 col-xs-0">
                        <img src="images\donor.jpg" alt="" class="donorpic">
                    </div>
                    <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                        <div class="box2" style=" background-image: url(images/adminback.png);">
                            <div class="contentBx">
                                <div class="formBx">
                                    <form>
                                    <div class="row">
                                    <h2 class="col-7">Donor Registration</h2>
                                    <div class="col-1"></div>
	                                    <div class="col-4">
												<div class="mb-2">		
								<%
								int id = 1;
								try {
									Connection con = ConnectionProvider.getCon();
									Statement st = con.createStatement();
									ResultSet rs = st.executeQuery("select max(id) from donor");
									if (rs.next ()) {
										id = rs.getInt(1);
										id = id+1;
									}
								%>
								<%
								} catch (Exception e) {
									e.printStackTrace();
								}
								%>
													<h3>Donor ID: <%out.println(id); %></h3>
													<input type="hidden" name="id" value="<% out.println(id); %>">
												</div>
											</div>
											</div>
                                        <div class="inputBx">
                                            <span>Name</span>
                                            <input type="text" name="name">
                                        </div>
                                        <div class="row">
                                        <div class="inputBx col-6">
                                            <span>Father's Name</span>
                                            <input type="text" name="father">
                                        </div>
                                        <div class="inputBx col-6">
                                            <span>Mother's Name</span>
                                            <input type="text" name="mother">
                                        </div>
                                        </div>
                                        <div class="row">
                                        <div class="inputBx col-6">
                                            <span>Mobile No.</span>
                                            <input type="number" name="mobile">
                                        </div>
                                        <div class="inputBx col-6">
                                            <span>Email ID</span>
                                            <input type="email" name="email">
                                        </div>
                                        </div>
                                        <div class="row">
                                        <div class="inputBx col-6">
                                            <span>Gender</span>
                                            <input type="text" name="gender">
                                        </div>
                                        <div class="inputBx col-6">
                                            <span>Blood Group</span>
                                            <input type="text" name="bloodgroup">
                                        </div>
                                        </div>
                                        <div class="inputBx">
                                            <span>Address</span>
                                            <input type="text" name="address">
                                        </div>
                                        <div class="inputBx">
                                            <input type="submit" value="Submit" name="">
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
</html>