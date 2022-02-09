<!--#include file="../Partials/Utf8Asp.asp"-->
<%
        dim conexion
        dim area
        set conexion=Server.CreateObject("ADODB.Connection")
        set area = Server.CreateObject("ADODB.RecordSet")
        %>
        <!--#include file="../connectionSQL.asp"-->
        <%
        conexion.Open
        area.open "select * from Area",conexion
        %>
<html>
    <!--#include file="../Partials/Head.asp"-->
<body>
    <!--#include file="../Partials/Header.asp"-->
    <div>
        <h1>Área</h1>
        <%
        if not area.eof then
        %>
        <table Class="listado">
            <tr>
                <th>Código</th>
                <th colspan="2">Nombre</th>
                <th colspan="3">Descripción</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <%
            do while not area.eof
            %>
            <tr>
                <th><%response.write(area("Area_Codigo"))%></th>
                <th colspan="2"><%response.write(area("Area_Nombre"))%></th>
                <th colspan="3"><%response.write(area("Area_Descripcion"))%></th>
                <th>
                    <form action="Modificar/GenerarModificarArea.asp" method="post">
                        <input type="text" name="Area_Codigo" value="<%response.write(area("Area_Codigo"))%>" hidden />
                        <input type="submit" value="Modificar" title="Modifique los datos del Área">
                    </form>
                </th>
                <th>
                    <form action="Eliminar/ConfirmarEliminarArea.asp" method="post">
                        <input type="text" name="Area_Codigo" value="<%response.write(area("Area_Codigo"))%>" hidden />
                        <input type="submit" value="Eliminar" title="Elimine esta Área">
                    </form>
                </th>
            </tr>
            <%
            area.movenext
            loop
            %>
        </table>
        <form action="./Agregar/IngresoNuevaArea.asp" method="post">
            <input type="submit" value="Agregar" title="Agregue una nueva Área">
        </form>
        <%
        else
        %>
        <h3>Aún no hay ninguna Materia</h3>
        <%
        end if
        conexion.close
        %>
    </div>
</body>
   <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</html>