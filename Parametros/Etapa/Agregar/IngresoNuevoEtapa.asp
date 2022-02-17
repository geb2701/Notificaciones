<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%%>
<html>
    <!--#include virtual="/Partials/head.asp"-->
<body>
    <!--#include virtual="/Partials/header.asp"-->

    <div class="listado">   
        <form action="CrearEtapa.asp" method="post">
            <h1>Ingrese una nueva Etapa</h1>
            <table Class="tabla">
                <tr>
                    <td colspan="2">Nombre de Etapa:
                        <input type="text" name="prm_etapa_nombre" size="40" placeholder="Nombre Etapa" required title="Indique el Nombre de Etapa"/>
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearEtapa.asp" method="post">
                            <input type="submit" value="Agregar" title="Agregue la Etapa" class="btn-agregar" />
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarEtapas.asp" method="post">
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