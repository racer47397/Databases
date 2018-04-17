<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Jackson Alarmas Home</title>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    </head>
    <body>
        <ul class="section">
            <li><img src="images/Logo%20JA.png" alt="Logo Jackson Alarmas" style="float: left; width: 80px;height: 100px; padding: 10px;"></li>
            <li><a class="active" href="index.jsp" class="navbar">Inicio</a></li>
            <li><a href="registro.jsp" class="navbar">Regístrate</a></li>
            <li><a href="catalogo.jsp" class="navbar" align="center">Catálogo</a></li>
            <li><a href="info.html" class="navbar">Conócenos</a></li>
        </ul>
        
        <div class="modal">
            <div CLASS="container">
                <p>POR AGREGAR</p>
            </div>
        </div>
        
        
        <script>
            var modal = document.getElementById('popup');
            var span = document.getElementsByClassName("close")[0];
            span.onclick = function() {
                modal.style.display = "none";
            }
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
    </body>
</html>