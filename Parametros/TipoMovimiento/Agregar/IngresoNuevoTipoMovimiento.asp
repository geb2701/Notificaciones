<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%%>
<html>
    <!--#include virtual="/Partials/head.asp"-->
<body>
    <!--#include virtual="/Partials/header.asp"-->

    <div class="listado">
        <form action="CrearTipoMovimiento.asp" method="post">
            <h1>Ingrese un nuevo Tipo Movimiento</h1>
            <table Class="tabla">
                <tr>
                    <td colspan="2" class="medio">Tipo de Movimiento:
                            <input type="text" name="tipoMov_nombre" size="40" placeholder="Tipo Movimiento" required title="Indique el Tipo de Movimiento"/>
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearTipoMovimiento.asp" method="post">
                            <input type="submit" value="Agregar" title="Agregue el Tipo de Movimiento" class="btn-agregar"/>
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarTipoMovimientos.asp" method="post">
                            <input type="submit" value="Cancelar" title="Cancelar" class="btn-eliminar" >
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
   <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>