<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
                    String Email = request.getParameter("Email");
                    String pass = request.getParameter("password");
                    //System.out.println(name+"\t"+pass);
                    Connection cn=ConnectionProvider.getCon();
                    PreparedStatement ps = cn.prepareStatement("select * from admin where Email=(?) and password =(?)");
                    ps.setString(1, Email);
                    ps.setString(2, pass);
                    ResultSet rs = ps.executeQuery();
                    if(rs.next())
                    {
                    	HttpSession session2 = request.getSession();
                    	session2.setAttribute("Email", Email);
                    %>
                    	 <jsp:forward page="Dashboard.jsp"></jsp:forward>	 
                    <%	
                    }else{
                    	 	response.sendRedirect("http://localhost:8077/BDonation/adminlogin.jsp?msg=invalid");	
                    }
                    
                    %>