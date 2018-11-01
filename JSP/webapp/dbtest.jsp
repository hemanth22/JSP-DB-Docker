<%@page import="java.sql.*" %>
<%
   String table=request.getParameter("tab");
   try
   { Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:pdborcl","scott","tiger");


     		DatabaseMetaData dbmd=con.getMetaData();

     		 System.out.println("Database Product Name : "+ dbmd.getDatabaseProductName());



     		 System.out.println("Database Product Version : "+dbmd.getDatabaseProductVersion());



     		 System.out.println("Driver Name : "+dbmd.getDriverName( ));



     		 System.out.println("Driver Version : "+dbmd.getDriverVersion());



               con.close();
   }
   catch(Exception e)
      { out.print("<h1>"+e+"</h1>");}
   out.close();
%>
