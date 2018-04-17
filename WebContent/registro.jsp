<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro</title>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    </head>
    <body>
        <ul class="section">
            <li><img src="images/Logo%20JA.png" alt="Logo Jackson Alarmas" style="float: left; width: 80px;height: 100px; padding: 10px;"></li>
            <li><a href="index.jsp" class="navbar">Inicio</a></li>
            <li><a class="active" class="active" href="registro.jsp" class="navbar">Reg�strate</a></li>
            <li><a href="catalogo.jsp" class="navbar" align="center">Cat�logo</a></li>
            <li><a href="info.jsp" class="navbar">Con�cenos</a></li>
            <li><p class="navbar" id="userP"></p></li>
        </ul>
        <div class="modal">
            <form method="post" action="RegistroLogic" class="modal-content" style="border:1px solid #ccc">
                <div class="container">
                    <h1 style="font-size: 200%;margin-bottom: 14px;">Reg�strate</h1>
                    <p>Por favor llena los datos a continuaci�n para hacer tu registro.</p>
                    <hr>
                
                    <label for="user"><b>Nombre completo</b></label>
                    <input type="text" placeholder="Erick David Gil Jackson" name="user" class="registro" required>
                
                    <label for="psw"><b>Contrase�a</b></label>
                    <input type="password" placeholder="Contrase�a" name="psw" class="registro" required>
                
                    <label for="psw-repeat"><b>Confirma tu contrase�a</b></label>
                    <input type="password" placeholder="Confirmar contrase�a" name="psw-repeat" class="registro" required>
                    
                    <label for="calle"><b>Direcci�n</b></label>
                    <input type="text" name="calle" placeholder="Retorno 19 Colonia H�roes de Padierna CP 14200" class="registro" required>
                    
                    <label for="num_tel"><b>N�mero telef�nico</b></label>
                    <input type="text" placeholder="5512345678" name="num_tel" class="registro" required>
                    
                    <p>Al crear una cuenta, usted acepta nuestros <a href="#" style="color:dodgerblue">T�rminos y condiciones</a> (POR AGREGAR).</p>
                
                    <div class="clearfix">
                        <button type="submit" class="signupbtn">Registrar</button>
                    </div>
                </div>
            </form>
        </div>
      
        <script>
        	document.getElementById("userP").innerHTML = "Hola, "+localStorage.getItem("user");
        </script>
    </body>
</html>