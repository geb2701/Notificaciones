<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
dim conexion
dim prm_etapa
set conexion=Server.CreateObject("ADODB.Connection")
set prm_etapa = Server.CreateObject("ADODB.RecordSet")
%>
<!--#include virtual="/connectionSQL.asp"-->
<!--#include virtual="/Partials/Validations.asp"-->
<%
conexion.open
dim prm_etapa_nombre
prm_etapa_nombre=MayusculaTodas(Request.form("prm_etapa_nombre"))
if prm_etapa_nombre="" Then
%>
    <meta http-equiv="<%response.write("refresh")%>" content="<%response.write("0; url=/./Default.asp")%>" />
<%
end if
%>
<html>
    <!--#include virtual="/Partials/Head.asp"-->
<body>
    <!--#include virtual="/Partials/Header.asp"-->
    <div class="listado">
<%
prm_etapa.open "select Prm_Etapa_Codigo,Prm_Etapa_Vigencia from Prm_Etapa WHERE Prm_Etapa_Nombre = '"&prm_etapa_nombre&"'",conexion
if prm_etapa.EOF then
    conexion.execute("insert into Prm_Etapa (Prm_Etapa_Nombre) VALUES('"&prm_etapa_nombre&"')")
    prm_etapa.Close
%>
        <h1>Los datos fueron Agregados Exitosamente</h1>
        <%
         Else
         If prm_etapa("Prm_Etapa_Vigencia")=0 then
          conexion.execute("UPDATE Prm_Etapa SET Prm_Etapa_Vigencia=1 where Prm_Etapa_Codigo='"&prm_etapa("Prm_Etapa_Codigo")&"'")
        %>
            <h1>Esta Etapa ya Existia y se volvio a Habilitar</h1>
            <h2>Los datos fueron Agregados</h2>
        <%
            Else
        %>
            <h1>Este Etapa ya Existe</h1>
            <h2>Los datos no fueron Agregados</h2>
        <% 
            End If
            End If
            conexion.close
        %>
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="IngresoNuevoEtapa.asp" method="post">
                        <input type="submit" value="Agregar Otra" title="Agregue otra Etapa" class="btn-agregar">
                    </form>
                </div>
                <div class="col-sm-7 col-md-6 py-2">
                    <form action="../RecuperarEtapas.asp" method="post">
                        <input type="submit" value="Regresar" title="Regresar" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>