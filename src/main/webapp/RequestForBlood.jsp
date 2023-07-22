<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Request</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                    <a class="nav-link" href="DonersList.jsp">Doners' List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ManageStock.jsp">Manage Stock</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Blood Requests</a>
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
<!-- Blood Request page -->

<!-- table -->
<div class="row">
    <div class="col-1"></div>
    <div class="col-10">
        <div class="table-response">
            <table class="table  table-sm align-middle tablemain">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Mobile</th>
                        <th scope="col">Email</th>
                        <th scope="col">Bloodgroup</th>
                        <th scope="col">Done</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                	<%
                        try{
                            Connection con = ConnectionProvider.getCon();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from bloodrequest where status='pending'");
                            while(rs.next()){
                        %>
                    <tr class="tablerow">
                        <td><%=rs.getString(1) %></td>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><a class="btn btn-primary" href="RequestBloodDone.jsp?mobilenumber=<%=rs.getString(2)  %>" role="button">Done</a></td>
                        <td><a class="btn btn-danger" href="RequestBloodDelete.jsp?mobilenumber=<%= rs.getString(2) %>" role="button">Delete</a></td>
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