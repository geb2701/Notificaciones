<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%%>
<html>
    <!--#include virtual="/Partials/head.asp"-->
<body>
    <!--#include virtual="/Partials/header.asp"-->

    <div class="listado">   
        <form action="CrearEstado.asp" method="post">
            <h1>Ingrese los nuevos datos</h1>
            <table Class="tabla">
                <tr>
                    <td colspan="2">Nombre del Estado:
                        <input type="text" name="estado_nombre" size="40" placeholder="Nombre Estado" required pattern="[A-ZÑ,Á,É,Í,Ó,Ú]{1}[a-zA-Z\sñ,á,é,í,ó,ú,ü{1,}" title="Indique el Nombre del Estado"/>
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearEstado.asp" method="post">
                            <input type="submit" value="Agregar" title="Agregue el Estado" class="btn-agregar" />
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarEstados.asp" method="post">
                            <input type="submit" value="Regresar" title="Regrese al listado de Áreas">
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>