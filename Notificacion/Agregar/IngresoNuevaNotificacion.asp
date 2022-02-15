<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
dim conexion
dim auxiliar
set conexion=Server.CreateObject("ADODB.Connection")
set auxiliar = Server.CreateObject("ADODB.RecordSet")
%>
<!--#include virtual="/connectionSQL.asp"-->
<%
conexion.open
%>
<html>
    <!--#include virtual="/Partials/head.asp"-->
<body>
    <!--#include virtual="/Partials/header.asp"-->

    <div class="listado">   
        <form action="CrearNotificacion.asp" method="post">
            <h1>Ingrese los nuevos datos</h1>
            <table Class="tabla">
                <tr>
                    <!--Esta parte del codigo se puede hacer con un while dentro de otro while pero no llego con el tiemepo-->
                    <td>Áreas: 
                        <select name="area_Codigo" title="Seleccione el Área">
                        <%
                            auxiliar.open "select * from Prm_Area",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parametros de Área</option>
                        <% 
                            else
                            do while not auxiliar.eof
                        %>
                            <option value="<%response.write(auxiliar("Area_Codigo"))%>"><%response.write(auxiliar("Area_Codigo"))%>-<%response.write(auxiliar("Area_Nombre"))%></option>
                        <%
                            auxiliar.movenext
                            loop
                            auxiliar.close
                            end if
                        %>
                        </select>
                    </td>
                    <td>Tipo Movimiento: 
                        <select name="tipoMov_codigo" title="Seleccione el Tipo de Movimiento">
                        <%
                            auxiliar.open "select * from Prm_TipoMovimiento",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parametros de Tipo de Movimiento</option>
                        <% 
                            else
                            do while not auxiliar.eof
                        %>
                            <option value="<%response.write(auxiliar("TipoMov_Codigo"))%>"><%response.write(auxiliar("TipoMov_Codigo"))%>-<%response.write(auxiliar("TipoMov_Nombre"))%></option>
                        <%
                            auxiliar.movenext
                            loop
                            auxiliar.close
                            end if
                        %>
                        </select>
                        
                    </td>
                </tr>
                <tr>
                    <td>Etapa: 
                        <select name="etapa_Codigo" title="Seleccione la Etapa">
                        <%
                            auxiliar.open "select * from Prm_Etapa",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parametros de Etapa</option>
                        <% 
                            else
                            do while not auxiliar.eof
                        %>
                            <option value="<%response.write(auxiliar("Etapa_Codigo"))%>"><%response.write(auxiliar("Etapa_Codigo"))%>-<%response.write(auxiliar("Etapa_Nombre"))%></option>
                        <%
                            auxiliar.movenext
                            loop
                            auxiliar.close
                            end if
                        %>
                        </select>
                    </td>
                    <td>Estado
                        <select name="estado_Codigo" title="Seleccione el Estado">
                        <%
                            auxiliar.open "select * from Prm_Estado",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parametros de Etapa</option>
                        <% 
                            else
                            do while not auxiliar.eof
                        %>
                            <option value="<%response.write(auxiliar("Estado_Codigo"))%>"><%response.write(auxiliar("Estado_Codigo"))%>-<%response.write(auxiliar("Estado_Nombre"))%></option>
                        <%
                            auxiliar.movenext
                            loop
                            auxiliar.close
                            end if
                        %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Rol: 
                        <select name="rol_Codigo" title="Seleccione el Rol">
                        <%
                            auxiliar.open "select * from Prm_Rol",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parametros de Etapa</option>
                        <% 
                            else
                            do while not auxiliar.eof
                        %>
                            <option value="<%response.write(auxiliar("Rol_Codigo"))%>"><%response.write(auxiliar("Rol_Codigo"))%>-<%response.write(auxiliar("Rol_Nombre"))%></option>
                        <%
                            auxiliar.movenext
                            loop
                            auxiliar.close
                            end if
                        %>
                        </select>
                    </td>
                    <td>Cuit del Demandado
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearNotificacion.asp" method="post">
                            <input type="submit" value="Crear" title="Crear Notificacion" class="btn-agregar" />
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarNotificaciones.asp" method="post">
                            <input type="submit" value="Regresar" title="Regresar" class="btn-eliminar">
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>