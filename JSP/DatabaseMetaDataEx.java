import java.sql.*;



class DatabaseMetaDataEx

{  public static void main(String args[]) throws SQLException, ClassNotFoundException

	{

		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con=

			DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");



		DatabaseMetaData dbmd=con.getMetaData();

		 System.out.println("Database Product Name : "+ dbmd.getDatabaseProductName());



		 System.out.println("Database Product Version : "+dbmd.getDatabaseProductVersion());



		 System.out.println("Driver Name : "+dbmd.getDriverName( ));

		 

		 System.out.println("Driver Version : "+dbmd.getDriverVersion());

 

          con.close();

	}

}
