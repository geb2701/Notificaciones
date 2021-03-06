<!--#include virtual="/Partials/Utf8Asp.asp"-->
<%
dim conexion
dim auxiliar
dim cuits= Array(10)
set conexion=Server.CreateObject("ADODB.Connection")
set auxiliar = Server.CreateObject("ADODB.RecordSet")
dim tipoEscrito_Codigo, area_Codigo, tipoMov_Codigo, etapa_Codigo, estado_Codigo, rol_Codigo, cantidadCuit, SectorFirmante_Codigo
tipoEscrito_Codigo=Request.form("tipoEscrito_Codigo")
area_Codigo=Request.form("area_Codigo")
tipoMov_Codigo=Request.form("tipoMov_Codigo")
etapa_Codigo=Request.form("etapa_Codigo")
estado_Codigo=Request.form("estado_Codigo")
rol_Codigo=Request.form("rol_Codigo")
cantidadCuit=Request.form("cantidadCuit")
SectorFirmante_Codigo=Request.form("SectorFirmante_Codigo")
if IsNull(cantidadCuit) or IsEmpty(cantidadCuit) Then
    cantidadCuit=0
end if
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
        <form action="CrearNotificacion.asp" name="formulario" method="post">
            <h1>Ingrese una nueva Notificación</h1>
            <table Class="tabla">
                <tr>
                    <!--Esta parte del codigo se puede hacer con un while dentro de otro while pero no llego con el tiemepo-->
                    <td>Áreas: 
                        <select name="area_Codigo" title="Seleccione el Área">
                        <%
                            auxiliar.open "select * from Prm_Area",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Área</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_Area_Codigo")) = Cint(area_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_Area_Codigo"))%>"><%response.write(auxiliar("Prm_Area_Codigo"))%>-<%response.write(auxiliar("Prm_Area_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_Area_Codigo"))%>"><%response.write(auxiliar("Prm_Area_Codigo"))%>-<%response.write(auxiliar("Prm_Area_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
                        %>
                        </select>
                        </td>
                    <td>Tipo Movimiento: 
                        <select name="tipoMov_Codigo" title="Seleccione el Tipo de Movimiento">
                        <%
                            auxiliar.open "select * from Prm_TipoMovimiento",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Tipo de Movimiento</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_TipoMov_Codigo")) = Cint(TipoMov_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_TipoMov_Codigo"))%>"><%response.write(auxiliar("Prm_TipoMov_Codigo"))%>-<%response.write(auxiliar("Prm_TipoMov_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_TipoMov_Codigo"))%>"><%response.write(auxiliar("Prm_TipoMov_Codigo"))%>-<%response.write(auxiliar("Prm_TipoMov_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
                        %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Etapa: 
                        <select name="etapa_Codigo" title="Seleccione el Etapa">
                        <%
                            auxiliar.open "select * from Prm_Etapa",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Etapa</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_Etapa_Codigo")) = Cint(etapa_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_Etapa_Codigo"))%>"><%response.write(auxiliar("Prm_Etapa_Codigo"))%>-<%response.write(auxiliar("Prm_Etapa_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_Etapa_Codigo"))%>"><%response.write(auxiliar("Prm_Etapa_Codigo"))%>-<%response.write(auxiliar("Prm_Etapa_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
                        %>
                        </select>
                    </td>
                    <td>Estado:
                        <select name="estado_Codigo" title="Seleccione el Estado">
                        <%
                            auxiliar.open "select * from Prm_Estado",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Estado</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_Estado_Codigo")) = Cint(estado_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_Estado_Codigo"))%>"><%response.write(auxiliar("Prm_Estado_Codigo"))%>-<%response.write(auxiliar("Prm_Estado_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_Estado_Codigo"))%>"><%response.write(auxiliar("Prm_Estado_Codigo"))%>-<%response.write(auxiliar("Prm_Estado_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
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
                            <option value="0">No hay Parámetros de Rol</option>
                        <% 
                            else
                            dim numeroRol
                            do while not auxiliar.eof
                            if (auxiliar("Prm_Rol_Codigo")) = Cint(rol_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_Rol_Codigo"))%>"><%response.write(auxiliar("Prm_Rol_Codigo"))%>-<%response.write(auxiliar("Prm_Rol_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_Rol_Codigo"))%>"><%response.write(auxiliar("Prm_Rol_Codigo"))%>-<%response.write(auxiliar("Prm_Rol_Nombre"))%></option>
                        <%
                            numeroRol=auxiliar("Prm_Rol_Codigo")
                            end if
                            auxiliar.movenext
                            loop
                            numeroRol=numeroRol+1
                            %>
                            <option value="<%response.write(numeroRol)%>"><%response.write(numeroRol)%>-<%response.write("NO DEFINE")%></option>
                            <%
                            end if
                            auxiliar.close
                        %>
                        </select>
                    </td>
                    <td>Cantidad de Cuits:<input type="number" min="0" title="Seleccione la Cantidad de Demandados" placeholder="Cantidad de Demandados" required value="<%response.write(cuits(0))%>" name="cantidadCuit"/>
                    </td>
                </tr>
            </table>
            <h2>Escritos</h2>
            <table Class="tabla">
                <tr>
                    <td colspan="2">Escrito: 
                        <select name="tipoEscrito_Codigo" title="Seleccione el Tipo de Escrito">
                        <%
                            auxiliar.open "select Prm_TipoEscrito_Codigo,Prm_TipoEscrito_Nombre from Prm_TipoEscrito",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Escrito</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_TipoEscrito_Codigo")) = Cint(tipoEscrito_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_TipoEscrito_Codigo"))%>"><%response.write(auxiliar("Prm_TipoEscrito_Codigo"))%>-<%response.write(auxiliar("Prm_TipoEscrito_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_TipoEscrito_Codigo"))%>"><%response.write(auxiliar("Prm_TipoEscrito_Codigo"))%>-<%response.write(auxiliar("Prm_TipoEscrito_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
                        %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Tipo de Archivo: 
                        <!--Esto es un hardcode-->
                        <select name="tipoEscrito_tipoArchivo" title="Seleccione el Tipo de Archivo" onchange="cambiaTipoArchivo()">
                            <option value="1">EXCEL</option>
                            <option value="2">WORD</option>
                            <option value="3">PDF</option>
                        </select>
                    </td>
                    <td>Extensión: 
                        <select name="ext" title="Seleccione la Extencion">
                            <option value="XML">XML</option>
                            <option value="XMLS">XMLS</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Sector Firmante: 
                        <select name="sectorFirmante_Codigo" title="Seleccione el Sector Firmante">
                        <%
                            auxiliar.open "select * from Prm_SectorFirmante",conexion
                            if auxiliar.eof then
                        %>
                            <option value="0">No hay Parámetros de Escrito</option>
                        <% 
                            else
                            do while not auxiliar.eof
                            if (auxiliar("Prm_SectorFirmante_Codigo")) = Cint(SectorFirmante_Codigo) then
                        %>
                            <option selected value="<%response.write(auxiliar("Prm_SectorFirmante_Codigo"))%>"><%response.write(auxiliar("Prm_SectorFirmante_Codigo"))%>-<%response.write(auxiliar("Prm_SectorFirmante_Nombre"))%></option>
                        <%
                            else
                        %>
                            <option value="<%response.write(auxiliar("Prm_SectorFirmante_Codigo"))%>"><%response.write(auxiliar("Prm_SectorFirmante_Codigo"))%>-<%response.write(auxiliar("Prm_SectorFirmante_Nombre"))%></option>
                        <%
                            end if
                            auxiliar.movenext
                            loop
                            end if
                            auxiliar.close
                        %>
                        </select>
                    </td>
                </tr>
            </table>
             <h2>Cuits</h2>
             <div class="container">
                <div class="row">
                <table Class="tabla" id="tablaprueba">
                    <tr>
                        <td colspan="2">Cuit: 
                            <input type="text" min="0" title="" placeholder="Ingrese CUIT" required value="" name="cantidadCuit"/>
                        </td>
                    </tr>
                    <div class="form-group">
                        <button type="button" class="btn btn-primary d-flex justify-content-start" onclick="agregarFila()">Agregar Cuit</button>
                    </div>
                </table>
            </div>
            </div>
            
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 col-md-6 py-2">
                        <form action="CrearNotificacion.asp" method="post">
                            <input type="submit" value="Continuar" title="Continuar" class="btn-agregar" />
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
    <script type="text/javascript">
        //Esto es un HardCode :)
        var ext_1 = new Array("XML", "XMLS")
        var ext_2 = new Array("DOC", "DOCX")
        var ext_3 = new Array("PDF")
        var cont = 0
        function cambiaTipoArchivo() {
            var tipoArchivo;
            tipoArchivo = document.formulario.tipoEscrito_tipoArchivo[document.formulario.tipoEscrito_tipoArchivo.selectedIndex].value;
            if (tipoArchivo != 0) {
                mis_ext = eval("ext_" + tipoArchivo)
                num_ext = mis_ext.length;
                document.formulario.ext.length = num_ext;
                for (i = 0; i < num_ext; i++) {
                    document.formulario.ext.options[i].value = mis_ext[i];
                    document.formulario.ext.options[i].text = mis_ext[i];
                }
            }
        }
        function agregarFila(){
            document.getElementById("tablaprueba").insertRow(-1).innerHTML = "<td colspan='2'>Cuit: <input type='text' min='0' placeholder='Ingrese CUIT' required value='<%response.write(cantidadCuit)%>' name='cantidadCuit'/><button type='button' class='btn btn-danger' onclick='eliminarFila()'>Eliminar Cuit</button></td>";
            cont++
        }

        function eliminarFila(){
            var table = document.getElementById("tablaprueba");
            var rowCount = table.rows.length;
            //console.log(rowCount);
            
            if(rowCount <= 1)
                alert('No se puede eliminar el encabezado');
            else{
                table.deleteRow(rowCount -1);
                cont--
            }
              
        }
    </script>
    <!--#include virtual="Partials/ScriptBootstrap.asp"-->
</body>
</html>