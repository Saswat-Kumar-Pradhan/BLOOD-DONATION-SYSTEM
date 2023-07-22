<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String mobile = request.getParameter("mobile");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("select");


String status = "Pending";
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, mobile);
	ps.setString(3, email);
	ps.setString(4, bloodgroup);
	
	ps.setString(5, status);
	ps.executeUpdate();
	response.sendRedirect("http://localhost:8077/BDonation/BloodRequest.jsp?msg=valid");
}catch(Exception e)
{
	response.sendRedirect("http://localhost:8077/BDonation/BloodRequest.jsp?msg=invalid");
}
%>