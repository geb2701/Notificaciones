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
            End If
        %>
<html>

    <!--#include virtual="/Partials/Head.asp"-->

<body>
    <!--#include virtual="/Partials/Header.asp"-->

    <div class="listado">
        <h1>Eliminar Rol: <%response.Write(rol("Prm_Rol_Nombre"))%>
        </h1>
        <table Class="registro">
            <tr>
                <td>Código:
                    <%response.Write(rol("Prm_Rol_Codigo"))%>
                </td>
            </tr>
            <tr>
                <td>Nombre:
                    <%response.Write(rol("Prm_Rol_Nombre"))%>
                </td>
            </tr>
        </table>
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="EliminarRol.asp" method="post">
                        <input type="text" name="id" value="<%response.write(id)%>" hidden />
                        <input type="submit" value="Confirmar" title="Elimine el Rol" class="btn-eliminar">
                    </form>
                </div>
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="../RecuperarRoles.asp" method="post">
                        <input type="submit" value="Cancelar" title="Cancele la Eliminación">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>
