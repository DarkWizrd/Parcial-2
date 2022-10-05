<% 
Class.forName("org.mariadb.jdbc.Driver");
String driver = "jdbc:mariadb:";
String host = "//localhost:";
String port = "3306";
String database = "parcial_2";
String user = "Michael";
String password = "1699";

String  Cadena_Conexion= driver+host+port+"/"+database;

%>

