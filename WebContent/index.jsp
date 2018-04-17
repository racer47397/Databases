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
            <li><a href="info.jsp" class="navbar">Conócenos</a></li>
            <li><p class="navbar" id="userP"></p></li>
        </ul>
        
        <div class="modal">
            <div CLASS="container">
            <p class="modal-content texto">

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate sit amet risus eget vestibulum. Vivamus congue est leo, ac volutpat nulla scelerisque non. Fusce pharetra lectus ex, id viverra turpis cursus vel. Suspendisse in dignissim lorem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer quis libero mi. Curabitur blandit neque non sem convallis convallis. Praesent sit amet tellus nec magna auctor blandit. Quisque sed quam dolor. Vivamus odio lectus, tempor non purus at, maximus molestie purus. Proin nec lorem ac ex efficitur varius. In condimentum efficitur viverra. Nulla nunc quam, faucibus sed odio in, sollicitudin aliquet libero. Ut placerat et felis nec rutrum.

Aliquam varius, sapien vel posuere finibus, quam justo porttitor lectus, sed tempor purus lorem a dui. Praesent condimentum sit amet ex a fringilla. Nulla non volutpat massa, id vestibulum erat. Phasellus laoreet ipsum sit amet viverra tincidunt. Vivamus quis consectetur magna. Aliquam sed diam in justo tempor venenatis. Nam mauris metus, consequat ut magna vel, commodo auctor ante. Duis lacinia molestie nibh, sed egestas diam. Pellentesque commodo quis sapien vel pretium. Ut iaculis fermentum augue eu elementum. Morbi vulputate justo feugiat dui scelerisque consequat. Vivamus a risus sit amet tortor ullamcorper facilisis. Nullam nec erat lectus. Aliquam erat volutpat. </p>
            </div>
        </div>
        
        
        <script>
        
        	
            if('${requestScope.usuario}'!=""){
           		localStorage.setItem("user", '${requestScope.usuario}');
            
            	document.getElementById("userP").innerHTML = "Hola, "+localStorage.getItem("user");
            }else{
            	document.getElementById("userP").innerHTML = "Hola, "+localStorage.getItem("user");
            }
        </script>
    </body>
</html>