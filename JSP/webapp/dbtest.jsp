<%@page import="java.sql.*" %>
<%
   try
   { Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.0.100:1521/PDBORCL","scott","tiger");


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
