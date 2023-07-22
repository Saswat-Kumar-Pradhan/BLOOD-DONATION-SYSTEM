<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Request</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/table.css">
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
                    <a class="nav-link active" href="#">Doners' List</a>
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
<!-- Donors List page -->
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
			                <h4 class="text-center">Removed!</h4>
			                <br><br>
			                <div class="modal-body">
			                    <p class="text-center">Donor is successfully Removed from the list.</p>
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
			                <h4 class="text-center">Error!</h4>
			                <br><br>
			                <div class="modal-body">
			                    <p class="text-center">There is a unknown error !!!! Please try again.</p>
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
<!-- table -->
<div class="row">
    <div class="col-1"></div>
    <div class="col-10">
        <div class="table-response">
            <table class="table  table-sm align-middle tablemain">
                <thead>
                    <tr>
					  <th scope="col">ID</th>
				      <th scope="col">Name</th>
				      <th scope="col">Father's name</th>
				      <th scope="col">Mother's name</th>
				      <th scope="col">Mobile</th>
				      <th scope="col">Gender</th>
				      <th scope="col">Email</th>
				      <th scope="col">Bloodgroup</th>
				      <th scope="col">Address</th>
				      <th scope="col">Edit</th>
				      <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                <%
			    try{
			    	Connection con = ConnectionProvider.getCon();
			    	Statement st = con.createStatement();
			    	ResultSet rs = st.executeQuery("select * from donor");
			    	while(rs.next()){
			    %>	
			    <tr class="tablerow">
			    <td><%=rs.getInt(1) %></td>
			    <td><%=rs.getString(2) %></td>
			    <td><%=rs.getString(3) %></td>
			    <td><%=rs.getString(4) %></td>
			    <td><%=rs.getString(5) %></td>
			    <td><%=rs.getString(6) %></td>
			    <td><%=rs.getString(7) %></td>
			    <td><%=rs.getString(8) %></td>
			    <td><%=rs.getString(9) %></td>
			    <td><a class="btn btn-primary" href="UpdateDonor.jsp?id=<%=rs.getString(1)  %>" role="button">Edit</a></td>
			    <td><a class="btn btn-danger" href="DeleteDonor.jsp?id=<%= rs.getString(1) %>" role="button">Delete</a></td>
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