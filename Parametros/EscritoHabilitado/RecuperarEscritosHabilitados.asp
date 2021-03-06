<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
        dim conexion
        dim escritosHb
        dim area
        dim etapa
        dim estado
        dim tipoMovimiento
        dim rol
        dim modeloEscrito
        dim sector
        dim sector_Nombre
        set conexion=Server.CreateObject("ADODB.Connection")
        set escritosHb = Server.CreateObject("ADODB.RecordSet")
        set area = Server.CreateObject("ADODB.RecordSet")
        set etapa = Server.CreateObject("ADODB.RecordSet")
        set estado = Server.CreateObject("ADODB.RecordSet")
        set tipoMovimiento = Server.CreateObject("ADODB.RecordSet")
        set rol = Server.CreateObject("ADODB.RecordSet")
        set modeloEscrito = Server.CreateObject("ADODB.RecordSet")
        set sector = Server.CreateObject("ADODB.RecordSet")
        set sector_Nombre = Server.CreateObject("ADODB.RecordSet")
        %>
        <!--#include virtual="/connectionSQL.asp"-->
        <%
        conexion.Open
        escritosHb.open "select * from Prm_EscritosHabilitados where Prm_EscritoHB_Vigencia=1",conexion
        %>
<html>
    <!--#include virtual="/Partials/Head.asp"-->
<body>
    <!--#include virtual="/Partials/Header.asp"-->
    <div class="listado">
        <h1>Escritos Habilitados</h1>
        <form action="./Agregar/IngresoNuevoEscritoHabilitado.asp" method="post">
            <input type="submit" value="Agregar" title="Agregue un nuevo Escrito Habilitado" class="btn-agregar">
        </form>
        <%
        if not escritosHb.eof then
        %>
        <table Class="registro">
            <tr>
                <th>Código</th>
                <th>Area</th>
                <th>Etapa</th>
                <th>Estado</th>
                <th>Tipo de Movimiento</th>
                <th>Rol</th>
                <th>Tipo de Escrito</th>
                <th>Firmas Obligatorias</th>
                <th></th>
                <th></th>
            </tr>
            <%
            do while not escritosHb.eof
            %>
            <tr>
            <%
                area.open "select * from Prm_Area where Prm_Area_Codigo='"&escritosHb("Prm_EscritoHB_Area")&"'",conexion
                etapa.open "select * from Prm_Etapa where Prm_Etapa_Codigo='"&escritosHb("Prm_EscritoHB_Etapa")&"'",conexion
                estado.open "select * from Prm_Estado where Prm_Estado_Codigo='"&escritosHb("Prm_EscritoHB_Estado")&"'",conexion
                tipoMovimiento.open "select * from Prm_TipoMovimiento where Prm_TipoMov_Codigo='"&escritosHb("Prm_EscritoHB_TipoMov")&"'",conexion
                rol.open "select * from Prm_Rol where Prm_Rol_Codigo='"&escritosHb("Prm_EscritoHB_Rol")&"'",conexion
                modeloEscrito.open "select * from Prm_TipoEscrito where Prm_TipoEscrito_Codigo='"&escritosHb("Prm_EscritoHB_ModeloEscrito")&"'",conexion
                if escritosHb("Prm_EscritoHB_Obligatorio")=True then
                    sector.open "select Prm_FirmaPorSector_Firmante from Prm_FirmaPorSector where Prm_FirmaPorSector_EscritoHabilitados='"&escritosHb("Prm_EscritoHB_Codigo")&"'",conexion
                    sector_Nombre.open "select Prm_SectorFirmante_Nombre from Prm_SectorFirmante where Prm_SectorFirmante_Codigo='"&sector("Prm_FirmaPorSector_Firmante")&"'",conexion
                end if
            %>
                <th><%response.write(escritosHb("Prm_EscritoHB_Codigo"))%></th>
                <th><%response.write(area("Prm_Area_Nombre"))%></th>
                <th><%response.write(etapa("Prm_Etapa_Nombre"))%></th>
                <th><%response.write(estado("Prm_Estado_Nombre"))%></th>
                <th><%response.write(tipoMovimiento("Prm_TipoMov_Nombre"))%></th>
                <th><%response.write(rol("Prm_Rol_Nombre"))%></th>
                <th><%response.write(modeloEscrito("Prm_TipoEscrito_Nombre"))%></th>
                <th>
                    <% 
                    if escritosHb("Prm_EscritoHB_Obligatorio")=True then
                        response.write(sector_Nombre("Prm_SectorFirmante_Nombre"))
                    else
                        response.write("No")
                    end if
                    %>
                </th>
                <th>
                    <form action="Modificar/GenerarModificarEscritoHabilitado.asp?obligatorio=<%response.write(escritosHb("Prm_EscritoHB_Obligatorio"))%>" method="post">
                        <input type="text" name="id" value="<%response.write(escritosHb("Prm_EscritoHB_Codigo"))%>" hidden />
                        <input type="submit" value="Modificar" title="Modifique los datos del Escrito Habilitado">
                    </form>
                </th>
                <th>
                    <form action="Eliminar/ConfirmarEliminarEscritoHabilitado.asp" method="post">
                        <input type="text" name="id" value="<%response.write(escritosHb("Prm_EscritoHB_Codigo"))%>" hidden />
                        <input type="submit" value="Eliminar" title="Elimine el Escrito Habilitado" class="btn-eliminar">
                    </form>
                </th>
            </tr>
            <%
            area.close
            etapa.close
            estado.close
            tipoMovimiento.close
            rol.close
            modeloEscrito.close
            if escritosHb("Prm_EscritoHB_Obligatorio")=True then
                sector.close
                sector_Nombre.close
            end if
            escritosHb.movenext
            loop
            %>
        </table>
        <%
        else
        %>
        <h3>Aún no hay ningún Escrito Habilitado</h3>
        <%
        end if
        conexion.close
        %>
    </div>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>