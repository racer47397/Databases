<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Empresa</title>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    </head>
    <body>
        <ul class="section">
            <li><img src="images/Logo%20JA.png" alt="Logo Jackson Alarmas" style="float: left; width: 80px;height: 100px; padding: 10px;"></li>
            <li><a href="index.jsp" class="navbar">Inicio</a></li>
            <li><a href="registro.jsp" class="navbar">Reg�strate</a></li>
            <li><a href="catalogo.jsp" class="navbar" align="center">Cat�logo</a></li>
            <li><a class="active" href="info.jsp" class="navbar">Con�cenos</a></li>
            <li><p class="navbar sesion" id="userP"><a href="index.html" class="navbar" id="cerrar" styles="display:block;">Cerrar sesi�n</a></p></li>
        </ul>
        
        <div class="modal">
            <div CLASS="container">
                <p id="testo" class="modal-content texto">

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate sit amet risus eget vestibulum. Vivamus congue est leo, ac volutpat nulla scelerisque non. Fusce pharetra lectus ex, id viverra turpis cursus vel. Suspendisse in dignissim lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer quis libero mi. Curabitur blandit neque non sem convallis convallis. Praesent sit amet tellus nec magna auctor blandit. Quisque sed quam dolor. Vivamus odio lectus, tempor non purus at, maximus molestie purus. Proin nec lorem ac ex efficitur varius. In condimentum efficitur viverra. Nulla nunc quam, faucibus sed odio in, sollicitudin aliquet libero. Ut placerat et felis nec rutrum.

Aliquam varius, sapien vel posuere finibus, quam justo porttitor lectus, sed tempor purus lorem a dui. Praesent condimentum sit amet ex a fringilla. Nulla non volutpat massa, id vestibulum erat. Phasellus laoreet ipsum sit amet viverra tincidunt. Vivamus quis consectetur magna. Aliquam sed diam in justo tempor venenatis. Nam mauris metus, consequat ut magna vel, commodo auctor ante. Duis lacinia molestie nibh, sed egestas diam. Pellentesque commodo quis sapien vel pretium. Ut iaculis fermentum augue eu elementum. Morbi vulputate justo feugiat dui scelerisque consequat. Vivamus a risus sit amet tortor ullamcorper facilisis. Nullam nec erat lectus. Aliquam erat volutpat. </p>
            </div>
        </div>
        
        <script>
        
        var close = document.getElementById("cerrar");
        
        document.getElementById("userP").innerHTML = "Hola, "+localStorage.getItem("user");
        	
        	close.onClick(){
        		
        	}
        
        </script>
    </body>
</html>