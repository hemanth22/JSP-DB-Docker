<%@ page import="java.sql.*" %>
<%
Properties p=new java.util.Properties();
		p.load(new FileInputStream("Db.prop"));

	String driver=p.getProperty("DRIVER");
	String url=p.getProperty("URL");
	String username=p.getProperty("USERNAME");
String password=p.getProperty("PASSWORD");
	String table=p.getProperty("TABLE");

   try
   {

		Class.forName(driver);
 		Connection con = DriverManager.getConnection(url,username,password);
 	  Statement st=con.createStatement();

		   if(st.execute("SELECT * from "+table))
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
