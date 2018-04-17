<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Catálogo</title>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <style>
            *:not(.section) {box-sizing: border-box;}

            #myInput {
                background-image: url('images/search%20icon.png');
                background-position: 10px 10px;
                background-size: 2%;
                background-repeat: no-repeat;
                width: 100%;
                font-size: 16px;
                padding: 12px 20px 12px 40px;
                border: 1px solid #ddd;
                margin-bottom: 12px;
            }
            
            #myTable {
                border-collapse: collapse;
                width: 100%;
                border: 1px solid #ddd;
                font-size: 18px;
            }
            
            #myTable th, #myTable td {
                text-align: left;
                padding: 12px;
            }
            
            #myTable tr {
                border-bottom: 1px solid #ddd;
            }
            
            #myTable tr.header, #myTable tr:hover {
                background-color: #f1f1f1;
            }
        </style>
    </head>
    <body>
        <ul class="section">
            <li><img src="images/Logo%20JA.png" alt="Logo Jackson Alarmas" style="float: left; width: 80px;height: 100px; padding: 10px;"></li>
            <li><a href="index.jsp" class="navbar">Inicio</a></li>
            <li><a href="registro.jsp" class="navbar">Regístrate</a></li>
            <li><a class="active" class="active" href="catalogo.jsp" class="navbar" align="center">Catálogo</a></li>
            <li><a href="info.jsp" class="navbar">Conócenos</a></li>
            <li><p class="navbar" id="userP"></p></li>
        </ul>
        
        <div class="modal" id="lel">    
            <div class="modal-content" style="border:1px solid #ccc">
                <div class="container">
                    <h1 style="font-size: 200%;margin-bottom: 14px;">Catálogo</h1>
                </div>
            </div>
        </div>
            
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Busca tu producto..." title="Escribe el nombre de un producto">

        <table id="myTable">
            <tr class="header">
                <th style="width:60%;">Producto</th>
                <th style="width:40%;">Precio</th>
            </tr>
            <tr>
                <td>Alarma A</td>
                <td>$500</td>
            </tr>
            <tr>
                <td>Alarma B</td>
                <td>$300</td>
            </tr>
            <tr>
                <td>Alarma B plus</td>
                <td>$500</td>
            </tr>
            <tr>
                <td>ALARMA C</td>
                <td>$500</td>
            </tr>
        </table>

        <script>
            function myFunction() {
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }       
                }
            }
            
        </script>   
        
        <script>
        document.getElementById("userP").innerHTML = "Hola, "+localStorage.getItem("user");
        </script>
    </body>
</html>