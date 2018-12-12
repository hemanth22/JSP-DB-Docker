<%@ page import="java.sql.*" %>
<%
   String table=request.getParameter("TAB");
   try
   { Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@PDBORCL","scott","tiger");

	 Statement st=con.createStatement();

		   if(st.execute("SELECT * from tab"))
	          {  ResultSet rs=st.getResultSet();
		         ResultSetMetaData rsmd=rs.getMetaData();
				 int nc=rsmd.getColumnCount();

				    out.print("<body bgcolor=yellow text=blue>");
                         out.print("<table align=center>");
                   while(rs.next())
		              { out.print("<tr>");
				         for(int c=1;c<=nc;c++)
						   { out.print("<td>"+rs.getString(c)+"</td>");}
				         out.print("</tr>");
 				      }
						 out.print("</table>");
					out.print("</body>");
		      }
       st.close();
	   con.close();
   }
   catch(Exception e)
      { out.print("<h1>"+e+"</h1>");}
   out.close();
%>
