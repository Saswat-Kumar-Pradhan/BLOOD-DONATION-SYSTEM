<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String mobilenumber = request.getParameter("mobile") ;
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("bloodgroup");
String address = request.getParameter("address");
try{
	Connection cn = ConnectionProvider.getCon();
	PreparedStatement ps = cn.prepareStatement("update donor set name=?,father=?,mother=?,mobilenumber=?,gender=?,email=?,bloodgroup=?,address=? where id=?");
	
	ps.setString(1, name);
	ps.setString(2, father);
	ps.setString(3, mother);
	ps.setString(4, mobilenumber);
	ps.setString(5, gender);
	ps.setString(6, email);
	ps.setString(7, bloodgroup);
	ps.setString(8, address);
	ps.setString(9, id);
	ps.executeUpdate();
	response.sendRedirect("http://localhost:8077/bbms/EditDeleteList.jsp?msg=valid");
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("http://localhost:8077/bbms/EditDeleteList.jsp?msg=invalid");
} 
%>