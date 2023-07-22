<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Stock</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/ManageStock.css">
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
                    <a class="nav-link" href="AddNewDonor.jsp">Add Doner</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="DonersList.jsp">Doners' List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Manage Stock</a>
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
			                    <p class="text-center">Changes updated in the database successfully.</p>
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
  <div class="row">
  	<div class="col-1"></div>
    <div class="col-4">
    <br>
    	<form action="ManageStockAction.jsp" method="post" class="form-container">		
			<div class="contentBx">
                                <div class="formBx">
                                    <h2>STOCK MANAGEMENT</h2>
                                    <form>
                                        <div class="inputBx">
                                            <span>Blood Group</span>
                                            <h4>
                                                <input type="radio" id="A+" name="bloodgroup" value="A+"> <label for="A+">A+</label>
                                                <input type="radio" id="A-" name="bloodgroup" value="A-"> <label for="A-">A-</label>
                                                <input type="radio" id="B+" name="bloodgroup" value="B+"> <label for="B+">B+</label>
                                                <input type="radio" id="B-" name="bloodgroup" value="B-"> <label for="B-">B-</label><br>
                                                <input type="radio" id="O+" name="bloodgroup" value="O+"> <label for="O+">O+</label>
                                                <input type="radio" id="O-" name="bloodgroup" value="O-"> <label for="O-">O-</label>
                                                <input type="radio" id="AB+" name="bloodgroup" value="AB+"> <label for="AB+">AB+</label>
                                                <input type="radio" id="AB-" name="bloodgroup" value="AB-"> <label for="AB-">AB-</label>
                                            </h4>
                                        </div>
                                        <div class="inputBx">
                                            <span>Select increase/decrease</span>
                                            <select name="incdec" class="form-control ab1">
												<option selected>  </option>
												<option value="inc">Increase</option>
												<option value="dec">Decrease</option>
											</select>
                                        </div>
                                        <div class="inputBx">
                                            <span>Enter Units</span>
                                            <input type="number" name="units" class="form-control">
                                        </div>
                                        <br>
                                        <div class="inputBx">
                                            <input type="submit" value="submit request" name="">
                                        </div>
                                    </form>
                                </div>
                            </div>	
				</form>
        </div>
        <div class="col-1"></div>
    <div class="col-5"><br><br><br>
    <div class="table-response">
            <table class="table  table-sm align-middle tablemain">
                <thead>
                    <tr>
                      <th scope="col">Edit</th>
				      <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                 <%
			    try{
			    	Connection con = ConnectionProvider.getCon();
			    	Statement st = con.createStatement();
			    	ResultSet rs = st.executeQuery("select * from stock");
			    	while(rs.next()){
			    %>		
			    <tr class="tablerow">
			    <td><%=rs.getString(1) %></td>
			    <td><%=rs.getString(2) %></td>
			    </tr>
			    <%	
			    	}
			    }catch(Exception e)
			    {
			    	System.out.println(e);
			    }
			    %>
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-1"></div>
  </div>
</body>
</html>