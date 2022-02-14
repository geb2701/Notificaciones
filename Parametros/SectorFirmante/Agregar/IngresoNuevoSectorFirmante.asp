<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%%>
<html>
    <!--#include virtual="/Partials/head.asp"-->
<body>
    <!--#include virtual="/Partials/header.asp"-->

    <div class="listado">   
        <form action="CrearSectorFirmante.asp" method="post">
            <h1>Ingrese los nuevos datos</h1>
            <table Class="tabla">
                <tr>
                    <td colspan="2">Nombre del Sector Firmante:
                        <input type="text" name="sectorFirmante_nombre" size="40" placeholder="Nombre Sector Firmante" required pattern="[A-ZÑ,Á,É,Í,Ó,Ú]{1}[a-zA-Z\sñ,á,é,í,ó,ú,ü{1,}" title="Indique el Nombre del Sector Firmante"/>
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearSectorFirmante.asp" method="post">
                            <input type="submit" value="Agregar" title="Agregue el Sector Firmante" class="btn-agregar" />
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarSectorFirmante.asp" method="post">
                            <input type="submit" value="Listado de Sector Firmante" title="Vuelva al listado de Sector Firmante">
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>