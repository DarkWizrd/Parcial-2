<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.Connection" %>

<%@ include file= "../Datos_Conexion/Datos_Conexion.jsp" %>    

<%! 
private double aDoble (String value ){
    return (Double.valueOf(value).doubleValue());
}
%>

<%

Connection con= DriverManager.getConnection(Cadena_Conexion, user, password);

String query="select salarioporhora, horastrabajadas";

String idempleado=request.getParameter("idempleado");
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String direccion=request.getParameter("direccion");
String teléfono=request.getParameter("teléfono");
Double salarioporhora1 =aDoble(request.getParameter("salarioporhora"));
Double horastrabajadas1 =aDoble(request.getParameter("horastrabajadas"));


double Salarioneto1 = 0, Salariobruto1= 0, SeguroSocial1= 0, SeguroEducativo1 =0;

Salariobruto1=horastrabajadas1*salarioporhora1;//salario bruto
SeguroSocial1=Salariobruto1*0.09;//seguro social
SeguroEducativo1=Salariobruto1*0.0125;// seguro educativo
Salarioneto1=Salariobruto1-SeguroSocial1-SeguroEducativo1;//calculo del sueldo neto


Statement st=con.createStatement();

String sql="insert into empleado (idempleado, nombre, apellido, direccion, teléfono, salarioporhora, horastrabajadas, SeguroSocial, SeguroEducativo, Salariobruto, Salarioneto) values('"+idempleado+"','"+nombre+"','"+apellido+"','"+direccion+"','"+teléfono+"','"+salarioporhora1+"','"+horastrabajadas1+"','"+SeguroSocial1+"','"+SeguroEducativo1+"','"+Salariobruto1+"','"+Salarioneto1+"')";
 
int flag=st.executeUpdate(sql);
if(flag==1)
{
 
out.println("Added!");
 
}
 
else
 
{
 
out.println("Failed");
 
}
 
response.sendRedirect("Mostrar.jsp");


%>
