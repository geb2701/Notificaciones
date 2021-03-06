<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
        dim conexion
        dim tipoMovimiento
        set conexion=Server.CreateObject("ADODB.Connection")
        set tipoMovimiento = Server.CreateObject("ADODB.RecordSet")
        %>
        <!--#include virtual="/connectionSQL.asp"-->
        <%
        conexion.Open
        tipoMovimiento.open "select * from Prm_TipoMovimiento Where Prm_TipoMov_Vigencia='1'",conexion
        %>
<html>
    <!--#include virtual="/Partials/Head.asp"-->
<body>
    <!--#include virtual="/Partials/Header.asp"-->
    <div class="listado">
        <h1>Tipo de Movimiento</h1>
        <form action="./Agregar/IngresoNuevoTipoMovimiento.asp" method="post">
            <input type="submit" value="Agregar" title="Agregue un nuevo Tipo de Movimiento" class="btn-agregar">
        </form>
        <%
        if not tipoMovimiento.eof then
        %>
        <table Class="registro">
            <tr>
                <th>Código</th>
                <th colspan="2">Nombre</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <%
            do while not tipoMovimiento.eof
            %>
            <tr>
                <th><%response.write(tipoMovimiento("Prm_TipoMov_Codigo"))%></th>
                <th colspan="2"><%response.write(tipoMovimiento("Prm_TipoMov_Nombre"))%></th>
                <th>
                    <form action="Modificar/GenerarModificarTipoMovimiento.asp" method="post">
                        <input type="text" name="id" value="<%response.write(tipoMovimiento("Prm_TipoMov_Codigo"))%>" hidden />
                        <input type="submit" value="Modificar" title="Modifique los datos de este Tipo de Movimiento">
                    </form>
                </th>
                <th>
                    <form action="Eliminar/ConfirmarEliminarTipoMovimiento.asp" method="post">
                        <input type="text" name="id" value="<%response.write(tipoMovimiento("Prm_TipoMov_Codigo"))%>" hidden />
                        <input type="submit" value="Eliminar" title="Elimine este Tipo de Movimiento" class="btn-eliminar">
                    </form>
                </th>
            </tr>
            <%
            tipoMovimiento.movenext
            loop
            %>
        </table>
        <%
        else
        %>
        <h3>Aún no hay ningún Tipo de Movimiento</h3>
        <%
        end if
        conexion.close
        %>
        
    </div>
</body>
   <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</html>