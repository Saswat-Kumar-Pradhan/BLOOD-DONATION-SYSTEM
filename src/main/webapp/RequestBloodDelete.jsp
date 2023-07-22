<%@ page import="Project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String mobilenumber = request.getParameter("mobilenumber") ;
try{
	Connection cn = ConnectionProvider.getCon();
	Statement st = cn.createStatement();
	st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("http://localhost:8077/BDonation/RequestForBlood.jsp");
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("http://localhost:8077/BDonation/EditDeleteList.jsp");
} 
%>