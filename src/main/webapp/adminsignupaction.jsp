<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String Hname = request.getParameter("HospitalName");
String Email = request.getParameter("Email");
String pass = request.getParameter("password");
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("insert into admin values(?,?,?)");
	ps.setString(1, Hname);
	ps.setString(2, Email);
	ps.setString(3, pass);
	ps.executeUpdate();
	response.sendRedirect("http://localhost:8077/BDonation/adminsignup.jsp?msg=valid");
}catch(Exception e)
{
	response.sendRedirect("http://localhost:8077/BDonation/adminsignup.jsp?msg=invalid");
} 
%>