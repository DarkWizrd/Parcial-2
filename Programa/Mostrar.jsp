<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection" %>
<%@ include file= "../Datos_Conexion/Datos_Conexion.jsp" %>

<%
Connection con= DriverManager.getConnection(Cadena_Conexion, user, password);
Statement st=con.createStatement();

String query="select idempleado , nombre, apellido, direccion, tel�fono, salarioporhora, horastrabajadas, SeguroSocial, SeguroEducativo, Salariobruto, Salarioneto from empleado";


ResultSet rs=st.executeQuery(query);

if (rs.next())
{
	 rs=st.executeQuery(query);

%>
<a href="Registro_datos.jsp?" target="_parent"><button>Insertar Datos</button></a>


<table class="table table-striped" border="2" bordercolor="#2494b7">
<thead>
<tr>

<th>idempleado</th>

<th>nombre</th>

<th>apellido</th>

<th>direccion</th>

<th>telefono</th>

<th>salarioporhora</th>

<th>horastrabajadas</th>

<th>SeguroSocia</th>

<th>SeguroEducativo</th>

<th>Salariobruto</th>

<th>Salarioneto</th>


</tr>
<thead>

<%

while(rs.next())

{

%>


<tr>

<td><%=rs.getString(1)%></td>

<td><%=rs.getString(2)%></td>

<td><%=rs.getString(3)%></td>

<td><%=rs.getString(4)%></td>

<td><%=rs.getString(5)%></td>

<td><%=rs.getString(6)%></td>

<td><%=rs.getString(7)%></td>

<td><%=rs.getString(8)%></td>

<td><%=rs.getString(9)%></td>

<td><%=rs.getString(10)%></td>

<td><%=rs.getString(11)%></td>

</tr>
<%

}

%>
</table>
<%

}

	

%>
