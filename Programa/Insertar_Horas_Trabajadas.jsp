<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%@ include file= "../Datos_Conexion/Datos_Conexion.jsp" %> 
 
<%
Connection con= DriverManager.getConnection(Cadena_Conexion, user, password);
Statement st=con.createStatement();

String query="select idempleado, nombre, apellido, direccion, teléfono, salarioporhora, horastrabajadas";

ResultSet rs=st.executeQuery(query);

if (rs.next())
	 rs=st.executeQuery(query);

%>
