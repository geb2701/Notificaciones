<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
            dim conexion
            dim rol
            set conexion=Server.CreateObject("ADODB.Connection")
            set rol = Server.CreateObject("ADODB.RecordSet")
        %> 
        <!--#include virtual="/connectionSQL.asp"-->
        <!--#include virtual="/Partials/RecuperarId.asp"-->
        <%
            conexion.Open
            rol.open "select * from Prm_Rol where Prm_Rol_Codigo='"&id&"'",conexion
            if rol.eof then
        %>
        <meta http-equiv="<%response.write("refresh")%>" content="<%response.write("0; url=/./Default.asp")%>" />
        <%
            Else
        %>
<html>
    <!--#include virtual="/Partials/Head.asp"-->
<body>
    <!--#include virtual="/Partials/Header.asp"-->
    <div class="listado">
        <form action="ModificarRol.asp" method="post">
            <input type="text" name="id" value="<%response.write(id) %>" hidden />
            <h1>
                Modificar Rol
            </h1>
            <table Class="tabla">
                <tr>
                    <td colspan="2" class="medio">Rol:
                            <input type="text" name="rol_nombre" size="40" required title="Indique el Nombre del Rol" value="<%response.write(rol("Prm_Rol_Nombre"))%>"/>
                    </td>
                </tr>
            </table>
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="ModificarRol.asp" method="post">
                            <input type="submit" value="Modificar" title="Confirme la modificación" class="btn-agregar"/>
                        </form>
                    </div>
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="../RecuperarRoles.asp" method="post">
                            <input type="submit" value="Cancelar" title="Cancelar" class="btn-eliminar" >
                        </form>
                    </div>
                </div>
            </div>
        </form>
    </div>
        <%
            end if
            conexion.close
        %>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>
