<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
            dim conexion
            dim estado
            set conexion=Server.CreateObject("ADODB.Connection")
            set estado = Server.CreateObject("ADODB.RecordSet")
        %>
        <!--#include virtual="/connectionSQL.asp"-->
        <!--#include virtual="/Partials/RecuperarId.asp"-->
        <%
            conexion.Open
            estado.open "select * from Estado where Estado_Codigo='"&id&"'",conexion
            if estado.eof then
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
        <h1>Eliminar Estado: <%response.Write(estado("Estado_Nombre"))%>
        </h1>
        <table Class="tabla">
            <tr>
                <td></td>
                <td>Código:
                <td>
                    <%response.Write(estado("Estado_Codigo"))%>
                </td>
                </td>
                <td></td>
            </tr>
            <tr>
                <td>Nombre:
                </td>
                <td colspan="3">
                    <%response.Write(estado("Estado_Nombre"))%>
                </td>
            </tr>
        </table>
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="EliminarEstado.asp" method="post">
                        <input type="text" name="id" value="<%response.write(id)%>" hidden />
                        <input type="submit" value="Confirmar" title="Elimine el Estado" class="btn-eliminar">
                    </form>
                </div>
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="../RecuperarEstados.asp" method="post">
                        <input type="submit" value="Cancelar" title="Cancelar">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>