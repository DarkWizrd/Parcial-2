<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style  type="text/css"> 


* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: arial;

}

.forma{
  width: 700px;
  height: 500px;
  background:#111E6C;
  margin: auto;
  margin-top:  180px;
  box-shadow: 7px 13px 37px #000;
  padding: 20px 30px;
 
  color: white;
}
.cajas {
  width: 90%;
  border: 1px solid #017bab;
  margin-bottom: 15px;
  padding: 5px 5px;
  background: white;
  font-size: 14px;
  font-weight: bold;
}

.forma h5 {
  margin: 0;
  text-align: center;
  height: 40px;
  margin-bottom: 30px;
  border-bottom: 1px solid;
  font-size: 20px;
}



.botom {
  width: 90%;
  height: 30px;
  background: black;
  border: none;
  color: white;
  margin-bottom: 16px;
}



.forma p{
  height: 20px;
  text-align: center;
  border-bottom: 1px solid;
}

.forma a {
  color: white;
  text-decoration: none;
  font-size: 14px;
}

.forma a:hover {
  text-decoration: underline;
}
</style>


<title>Insert title here</title>
</head>
<body>
<form action="Captura_Horas_Trabajadas.jsp"   method="get">
  
<section  class="forma">
<h5>REGISTRAR DATOS</h5>


<input  class="cajas" type="text" name="idempleado" id="idempleado" placeholder="idempleado" > 

<input  class="cajas" type="text" name="nombre" id="nombre" placeholder="nombre"> 

<input  class="cajas" type="text" name="apellido" id="apellido" placeholder="apellido"> 


<input  class="cajas" type="text" name="direccion" id="direccion" placeholder="direccion"> 

<input  class="cajas" type="text" name="teléfono" id="teléfono" placeholder="teléfono"> 

<input   class="cajas" type="text" name="salarioporhora" id="salarioporhora" placeholder="salarioporhora" > 

<input   class="cajas"   type="text" name="horastrabajadas" id="horastrabajadas" placeholder="horastrabajadas" > 

<input  class="botom" type="submit" value="REGISTRAR DATOS" >
</section>

</form>
</body>
</html>