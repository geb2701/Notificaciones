﻿<!-- Header.asp
No funciona... :o(
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>Acciones Judiciales</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Type" content="text/html">
    <meta content="Acciones Judiciales" name="keywords">
    <meta content="Ministerio de trabajo, empleo y seguridad social" name="description">
    <meta content="INDEX,FOLLOW" name="robots">
    <link href="../Style/style.css" type="text/css" rel="stylesheet">
    <!-- Menu -->
    <link rel="stylesheet" href="../Style/menu.css" type="text/css">

    <!--<SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript" SRC="../include/infobox.js"></SCRIPT>-->


</head>
<body>


    <!-- COMIENZO - Ayuda dinamica
        <DIV ID="infodiv" STYLE="position:absolute; visibility:hidden; z-index:20; top:0px; left:0px;"></DIV>
        <SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
            maketip('linux','Ayuda','Die Japanische KNOPPIX Version wird weiterentwickelt vom National Institute of Advanced Industrial Science and Technology (AIST), Japan');
        </SCRIPT>

        <DIV id="TipLayer" style="visibility:hidden;position:absolute;z-index:1000;top:-100;"></DIV>
    FIN - Ayuda dinamica -->
    <!-- Encabezamiento, escudo ministerio y banner aplicaci�n -->
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="BannerBKG" ID="TBanner">
        <tr>
            <td width="5%" height="79">&nbsp;</td>
            <td width="20%" align="right"><img src="../images/banner/Titulo.gif" align="absmiddle"></td>
            <td width="50%">&nbsp;</td>
            <td width="20%" align="right"><img src="../images/banner/escudoMTEySS.gif" width="160" height="50" align="absmiddle"></td>
            <td width="5%">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" height="1" bgcolor="#E8E8E8"></td>
        </tr>
    </table>


    <!-- Menu -->
    <link rel="stylesheet" href="../Style/develmenu.css" type="text/css">

    <script type="text/javascript" src="../scripts/menu/JSCookMenu.js"></script>
    <script type="text/javascript" src="../scripts/menu/theme.js"></script>


    <table class="menuBar" border="0" cellpadding="0" cellspacing="0" width="100%" id="TMenu">
        <tr>
            <td width="70%" class="menuBackgr"><div id="mainMenuID"></div></td>
            <td width="5%" class="menuBackgr">
                <a href="http://Agenda.trabajo.gob.ar/Consultas/AbmAlerta.asp?Servicio=Juicios" style="color:red" target="_blank" title="Alertas"><b><img width="16px" height="18px" src="../images/menu/alerta.png" align="absmiddle" border="0">(0)</b></a>&nbsp;
            </td>
            <td width="10%" class="menuBackgr"></td>
            <td width="20%" class="menuUsuarioDisplay" align="right">
                <div ondblclick="window.open( '..\\seguridad\\entorno.asp', 'entorno', 'width=700, height=350, toolbar=0, menubar=0, directories=0, scrollbars=0, location=0, status=0' ); return false;">
                    usuario: &nbsp;TRABAJO\CAUSLENDER&nbsp;&nbsp;
                </div>
            </td>
        </tr>
    </table>

    <script type="text/javascript" src="../scripts/resumen.js"></script>
    
    <table cellSpacing="0" cellPadding="0" width="100%" border="0" Class="MenuLeftBkg">
        <tbody>
            <tr>
                <td class="ContentLeftLinks" align="right" width="98%" height="40" nowrap>


                    &nbsp;<IMG src="../images/menus/AltaOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Alta</font>


                    &nbsp;<IMG src="../images/menus/BajaOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Baja</font>


                    &nbsp;<IMG src="../images/menus/ModificarOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Editar</font>


                    &nbsp;<a href="javascript:FireEvent('Consultar')" style="COLOR: black; font-weight: normal" tabindex="-1"><IMG src="../images/menus/ConsultarOn.gif" align="absmiddle" border=0> Consulta</a>


                    &nbsp;<IMG src="../images/menus/FichaOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Ver Ficha</font>


                    &nbsp;<IMG src="../images/menus/ExportarOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Exportar</font>


                    &nbsp;<IMG src="../images/menus/ImprimirOff.gif" align="absmiddle" border=0><font style="COLOR: gray"> Imprimir</font>


                    &nbsp;
                </td>
                <td width="2%">
                </td>
            </tr>
        </tbody>
    </table>


    <table border="0"><tr><td height="3px"></td></tr></table>


    <form id="Formulario" name="Formulario" action="" enctype="multipart/form-data" method="post">
        <!-- Tabla Principal -->
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" ID="TGeneral">
            <tr>
                <td width="2%">	</td>
                <!-- Panel General -->
                <td width="96%">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Modificar', 'AbmCaso.asp?TipoJuicio=MULTAS PNRT' )" class="tabText"><font class="tabText">Principal</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoInfraccion.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Certificados</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoExpedientes.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Expedientes</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoAbogado.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Letrados</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoParte.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Partes</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabOver" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoMovimiento.asp?TipoJuicio=MULTAS PNRT')" class="tabTextSelected"><font class="tabTextSelected">Movimientos</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoMovContable.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Contable</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoLiquidacion.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Liquidaciones</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoPagos.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Pagos</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tabMediano" id="" onmouseover="this.className='tabOverMediano'" onmouseout="this.className='tabMediano'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoBoleta.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Boletas</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoOficioBCRA.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Oficios BCRA</font></a>
                                </div>
                            </td>
                            <td width="55" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoOficioBCRA.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Principal</font></a>
                                </div>
                            </td>
                            <td width="84" valign="bottom" align="center">
                                <div valign="bottom" align="center" class="tab" id="" onmouseover="this.className='tabOver'" onmouseout="this.className='tab'">
                                    <a href="javascript:FireEvent( 'Consultar', 'AbmCasoOficioBCRA.asp?TipoJuicio=MULTAS PNRT')" class="tabText"><font class="tabText">Notificaficaciones del Expediente</font></a>
                                </div>
                            </td>

                            <td width="800">&nbsp;</td>   
                        </tr>
                    </table>
                    <table class="tabTable" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td>
                                <fieldset id="billing">
                                <table border="0"><tr><td height="3px"></td></tr></table>

                                <div id="divAbmForm">
                                    <!-- TABLA TITULO -->
                                    <table cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="TablaEncabezadoTitulos" width="40%" height="22" align="center">
                                                    &nbsp;&nbsp;CASO&nbsp;&nbsp;&nbsp;&nbsp;48997
                                                </td>
                                                <td width="60%" align="right">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- FIN TABLA TITULO -->
                                    <table class="TablaEncabezado" cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                        <tbody>
                                            <tr>

                                                <td vAlign=top>


                                                    <!-- FORMULARIO -->
                                                    <!-- COMIENZO DE RENGLON-->

                                                    <table class="tablaAbmPar" border="0" cellSpacing="0" cellPadding="0" width="100%">
                                                        <tbody>
                                                            <tr class="campos">
                                                                <td width="1%" height="30"></td>
                                                                <td align="right" width="5%"><b>&Aacute;rea</b></td>
                                                                <td width="1%"></td>
                                                                <td width="14%">Multas PNRT</td>
                                                                <td width="1%"></td>
                                                                <td width="4%" align="right"><b>Carpeta</b></td>
                                                                <td width="1%"></td>
                                                                <td width="5%">48997</td>
                                                                <td width="1%"></td>
                                                                <td width="8%" align="right"><b>N°.MTEySS</b></td>
                                                                <td width="1%"></td>
                                                                <td width="11%">7-51-97341-2014</td>
                                                                <td width="1%"></td>
                                                                <td align="right" width="8%"><b>N°.Judicial</b></td>
                                                                <td width="1%"></td>
                                                                <td width="8%">123/2017</td>
                                                                <td width="1%"></td>
                                                                <td align="right" width="8%"><b>F.Ingreso</b></td>
                                                                <td width="1%"></td>
                                                                <td width="7%">9/1/2015</td>
                                                                <td width="1%"></td>
                                                                <td width="10%"><font color="red"><b>N°202010</b></font></td-->
                                                                <td width="1%"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!-- FIN RENGLON FORMULARIO -->
                                                    <!-- COMIENZO RENGLON FORMULARIO -->
                                                    <table class="tablaAbmImpar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table2">
                                                        <tr class="campos">
                                                            <td width="1%" height="30"></td>
                                                            <td align="right" width="5%"><b>Autos</b></td>
                                                            <td width="1%"></td>
                                                            <td width="64%" align="left">MINISTERIO DE TRABAJO, EMPLEO Y SEGURIDAD SOCIAL c/ GARDIEN DE SECURITE SRL S/EJECUCION FISCAL</td>
                                                            <td width="1%"></td>
                                                            <td align="right" width="8%"><b>F.Inicio</b></td>
                                                            <td width="1%"></td>
                                                            <td align="left" width="7%">8/3/2022</td>
                                                            <td width="1%"></td>
                                                            <td width="10%"><span class="HelpText">(promoción de la demanda)</span></td>
                                                            <td width="1%"></td>
                                                        </tr>
                                                    </table>
                                                    <!-- FIN RENGLON FORMULARIO -->


                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- FIN FORMULARIO -->
                                    <table border="0"><tr><td height="3px"></td></tr></table>
                                </div>
                                <!-- FIN divAbmForm -->
                                <div id="AbmData" name="AbmData" style="display:none">
                                    <table class="campos" border=0 width="100%">
                                        <tr>
                                            <td width="33%">
                                                <P>
                                                    <table class="campos" border=1>
                                                        <tr>
                                                            <td colspan=2><B>Request.Form</B></td>
                                                        </tr>
                                                        <tr>
                                                            <td><B>Indice</B></td>
                                                            <td><B>Valor</B></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tabla</td>
                                                            <td>Movimiento</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Orden</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Modo</td>
                                                            <td>Browse</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Id</td>
                                                            <td>2731888</td>
                                                        </tr>
                                                        <tr>
                                                            <td>AntModo</td>
                                                            <td>Modificacion</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Accion</td>
                                                            <td>Modificar</td>
                                                        </tr>
                                                        <tr>
                                                            <td>AntAccion</td>
                                                            <td>Consultar</td>
                                                        </tr>
                                                        <tr>
                                                            <td>AtEof</td>
                                                            <td>-1</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Pagina</td>
                                                            <td>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td>CantFilas</td>
                                                            <td>50</td>
                                                        </tr>
                                                        <tr>
                                                            <td>CambiosPendientes</td>
                                                            <td>False</td>
                                                        </tr>
                                                        <tr>
                                                            <td>EsAbmCombo</td>
                                                            <td>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td>ComboUpdateControls</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CasoId</td>
                                                            <td>208548</td>
                                                        </tr>
                                                        <tr>
                                                            <td>PreviousTab</td>
                                                            <td>Movimientos</td>
                                                        </tr>
                                                        <tr>
                                                            <td>EstadoEscrito</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>restoreControlFocus</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>restoreScrollTop</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>restoreTabFocus</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EscritoParametros</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>GeneraAlerta</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>ComboOnChange</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>NumeroOrden</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>TipoMovimientoId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Automatico</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Pendiente</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Fecha</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FechaVto</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Descripcion</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>DiasAviso</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>HorasAviso</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EtapaId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EstadoId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FechaInicio</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FechaFin</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>HoraInicio</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>HoraFin</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>TipoArchivoId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>ArchivoId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>ArchivoDescripcion</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>ArchivoPublico</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>UsuarioUpdateNombre</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EscritoId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EscritoModeloId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>PlantillaId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EscritoTipoPlantillaId</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FechaInsert</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FechaInsertEscrito</td>
                                                            <td></td>
                                                        </tr>
                                                    </table>

                                                </P>
                                            </td>

                                            <td width="33%">
                                                Variables Asp<BR>
                                                <table class="campos" border="1">
                                                    <tbody>
                                                        <tr>
                                                            <td><B>Variable</B></td>
                                                            <td><B>Valor</B></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tabla</td>
                                                            <td><input class="formobj" id="Tabla" name="Tabla" value="Movimiento"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Orden</td>
                                                            <td><input class="formobj" id="Orden" name="Orden" value=""></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Modo</td>
                                                            <td><input class="formobj" id="Modo" name="Modo" value="Modificacion"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Id</td>
                                                            <td><input class="formobj" id="Id" name="Id" value="2731888"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>AntModo</td>
                                                            <td><input class="formobj" id="AntModo" name="AntModo" value="Browse"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Accion</td>
                                                            <td><input class="formobj" id="Accion" name="Accion" value="Modificar"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>AntAccion</td>
                                                            <td><input class="formobj" id="AntAccion" name="AntAccion" value="Modificar"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>AtEof</td>
                                                            <td><input class="formobj" id="AtEof" name="AtEof" value="0"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Pagina</td>
                                                            <td><input class="formobj" id="Pagina" name="Pagina" value="0"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CantFilas</td>
                                                            <td><input class="formobj" id="CantFilas" name="CantFilas" value="50"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CambiosPendientes</td>
                                                            <td><input class="formobj" id="CambiosPendientes" name="CambiosPendientes" value="False"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EsAbmCombo</td>
                                                            <td><input class="formobj" id="EsAbmCombo" name="EsAbmCombo" value="0"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>ComboUpdateControls</td>
                                                            <td><input class="formobj" id="ComboUpdateControls" name="ComboUpdateControls" value=""></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                            <td width="33%">
                                                Variables Adicionales<BR>
                                                <table class="campos" border="1">
                                                    <tbody>
                                                        <tr>
                                                            <td><B>Variable</B></td>
                                                            <td><B>Valor</B></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CasoId</td>
                                                            <td><input class="formobj" id="CasoId" name="CasoId" value="208548"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>PreviousTab</td>
                                                            <td><input class="formobj" id="PreviousTab" name="PreviousTab" value="Movimientos"></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EstadoEscrito</td>
                                                            <td><input class="formobj" id="EstadoEscrito" name="EstadoEscrito" value=""></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="campos" border="1">
                                        <tr>
                                            <td><B>Variable</B></td>
                                            <td><B>Valor</B></td>
                                        </tr>
                                        <tr>
                                            <td>restoreControlFocus</td>
                                            <td><input class="formobj" id="restoreControlFocus" name="restoreControlFocus" value=""></td>
                                        </tr>
                                        <tr>
                                            <td>restoreScrollTop</td>
                                            <td><input class="formobj" id="restoreScrollTop" name="restoreScrollTop" value=""></td>
                                        </tr>
                                        <tr>
                                            <td>restoreTabFocus</td>
                                            <td><input class="formobj" id="restoreTabFocus" name="restoreTabFocus" value=""></td>
                                        </tr>

                                    </table>

                                </div>


                                <table width="98%" align="center" class="TituloConLinea">
                                    <tr>
                                        <td width="25%" align="left">
                                            <!-- MODO -->
                                            <IMG src="../images/menus/Editar_24x24.gif" vspace=0 align="absmiddle">&nbsp;&nbsp;<b>Editar</b>

                                        </td>
                                        <td width="45%" align="center">
                                        </td>
                                        <td width="30%" align="right">
                                        </td>
                                    </tr>
                                </table>
                                <table border="0"><tr><td height="3px"></td></tr></table>

                                <div id="divAbmForm">
                         
                                    <input type="hidden" id="EscritoParametros" name="EscritoParametros" class="formobj" value="">
                                    <input type="hidden" id="GeneraAlerta" name="GeneraAlerta" class="formobj" maxlength="0" value="0">
                                    <!-- TABLA TITULO -->
                                    <table cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                        <tbody>
                                            <tr>
                                                <td class="TablaEncabezadoTitulos" width="40%" height="22" align="center">
                                                    &nbsp;&nbsp;MOVIMIENTOS DEL CASO
                                                </td>
                                                <td width="60%" align="right">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>  
                                    

                                    <!-- FIN TABLA TITULO -->
                                    <table class="TablaEncabezado" cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                        <tbody>
                                            <tr>

                                                <td vAlign=top>
                                               
                                                    <!-- /Etapa | Estado -->
                                                    <!-- Separador -->
                                                    <table class="tablaAbmPar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table3">
                                                        <tr><td height="3" width="100%"></td></tr>
                                                    </table>
                                                    <!-- /Separador -->


                                                    <table class="subEncabezado" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table5">
                                                        <tr><td width="100%" height="15" align="center"><b>Generación de Alertas</b></td></tr>
                                                    </table>

                                                    <table class="tablaAbmPar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table14">
                                                        <tr><td height="3" width="100%"></td></tr>
                                                    </table>

                                                    <table class="tablaAbmPar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table4">
                                                        <tr class="campos">
                                                            <td width="1%"></td>
                                                            <td width="10%" align="right"><b>Fecha Inicio</b></td>
                                                            <td width="1%"></td>
                                                            <td width="6%">
                                                                <input type="text" id="FechaInicio" name="FechaInicio" class="formobj" maxlength="10" onblur="javascript:FormatoFecha('FechaInicio');javascript:CompletaCampoFecha('FechaInicio','FechaFin');" onkeypress="javascript: return validKeyEvent(event, 'FechaInicio', 'DATE')" value="">
                                                            </td>
                                                            <td width="2%">
                                                                <!-- DescripcionAreaAyuda - Haga click aqu� para ver la ayuda de este campo --><a tabindex="-1"
                                                                                                                                                  onmouseover="this.style.cursor='pointer';DescripcionAreaAyuda.src='../Images/Navegacion/AyudaOn.gif';window.status='Haga click aqu� para ver la ayuda de este campo';return true"
                                                                                                                                                  onmouseout="this.style.cursor='default';DescripcionAreaAyuda.src='../Images/Navegacion/Ayuda.gif';window.status='';return true"
                                                                                                                                                  href="javascript:ShowHelpWindow('Fecha de Inicio','Esta es la Fecha de Inicio de la Alerta. De no ser completada ser&#225; la fecha del movimiento generado.')"
                                                                                                                                                  onkeypress="if (event.keyCode==13) {ShowHelpWindow('Fecha de Inicio','Esta es la Fecha de Inicio de la Alerta. De no ser completada ser&#225; la fecha del movimiento generado.');}"><img alt="Haga click aqu� para ver la ayuda de este campo" src="../Images/Navegacion/Ayuda.gif" border="0" name="DescripcionAreaAyuda"></a>
                                                            </td>


                                                            <td width="7%" align="right"><b>Hora Inicio</b></td>
                                                            <td width="1%"></td>
                                                            <td width="4%">
                                                                <input type="text" id="HoraInicio" name="HoraInicio" class="formobj" maxlength="5" onblur="javascript:validaHora('HoraInicio');javascript:CompletaCampoHora('HoraInicio','HoraFin')" value="10:00">
                                                            </td>
                                                            <td width="2%">
                                                                <!-- DescripcionAreaAyuda - Haga click aqu� para ver la ayuda de este campo --><a tabindex="-1"
                                                                                                                                                  onmouseover="this.style.cursor='pointer';DescripcionAreaAyuda.src='../Images/Navegacion/AyudaOn.gif';window.status='Haga click aqu� para ver la ayuda de este campo';return true"
                                                                                                                                                  onmouseout="this.style.cursor='default';DescripcionAreaAyuda.src='../Images/Navegacion/Ayuda.gif';window.status='';return true"
                                                                                                                                                  href="javascript:ShowHelpWindow('Hora de Inicio','Esta es la Hora de Inicio de la Alerta. De no ser completada se tomar&#225;n las 10:00am.')"
                                                                                                                                                  onkeypress="if (event.keyCode==13) {ShowHelpWindow('Hora de Inicio','Esta es la Hora de Inicio de la Alerta. De no ser completada se tomar&#225;n las 10:00am.');}"><img alt="Haga click aqu� para ver la ayuda de este campo" src="../Images/Navegacion/Ayuda.gif" border="0" name="DescripcionAreaAyuda"></a>
                                                            </td>
                                                            <td width="7%" align="right"><b>Fecha Fin</b></td>
                                                            <td width="1%"></td>
                                                            <td width="6%">
                                                                <input type="text" id="FechaFin" name="FechaFin" class="formobj" maxlength="10" onkeypress="javascript: return validKeyEvent(event, 'FechaFin', 'DATE')" value="">
                                                            </td>
                                                            <td width="2%">
                                                                <!-- DescripcionAreaAyuda - Haga click aqu� para ver la ayuda de este campo --><a tabindex="-1"
                                                                                                                                                  onmouseover="this.style.cursor='pointer';DescripcionAreaAyuda.src='../Images/Navegacion/AyudaOn.gif';window.status='Haga click aqu� para ver la ayuda de este campo';return true"
                                                                                                                                                  onmouseout="this.style.cursor='default';DescripcionAreaAyuda.src='../Images/Navegacion/Ayuda.gif';window.status='';return true"
                                                                                                                                                  href="javascript:ShowHelpWindow('Fecha de Fin','Esta es la Fecha de Finalizaci&#243;n de la Alerta. De no ser completada ser&#225; la fecha del movimiento generado.')"
                                                                                                                                                  onkeypress="if (event.keyCode==13) {ShowHelpWindow('Fecha de Fin','Esta es la Fecha de Finalizaci&#243;n de la Alerta. De no ser completada ser&#225; la fecha del movimiento generado.');}"><img alt="Haga click aqu� para ver la ayuda de este campo" src="../Images/Navegacion/Ayuda.gif" border="0" name="DescripcionAreaAyuda"></a>
                                                            </td>


                                                            <td width="7%" align="right"><b>Hora Fin</b></td>
                                                            <td width="1%"></td>
                                                            <td width="4%">
                                                                <input type="text" id="HoraFin" name="HoraFin" class="formobj" maxlength="5" value="12:00">
                                                            </td>
                                                            <td width="2%">
                                                                <!-- DescripcionAreaAyuda - Haga click aqu� para ver la ayuda de este campo --><a tabindex="-1"
                                                                                                                                                  onmouseover="this.style.cursor='pointer';DescripcionAreaAyuda.src='../Images/Navegacion/AyudaOn.gif';window.status='Haga click aqu� para ver la ayuda de este campo';return true"
                                                                                                                                                  onmouseout="this.style.cursor='default';DescripcionAreaAyuda.src='../Images/Navegacion/Ayuda.gif';window.status='';return true"
                                                                                                                                                  href="javascript:ShowHelpWindow('Hora de Fin','Esta es la Hora de Finalizaci&#243;n de la Alerta. De no ser completada se tomar&#225;n las 10:00am.')"
                                                                                                                                                  onkeypress="if (event.keyCode==13) {ShowHelpWindow('Hora de Fin','Esta es la Hora de Finalizaci&#243;n de la Alerta. De no ser completada se tomar&#225;n las 10:00am.');}"><img alt="Haga click aqu� para ver la ayuda de este campo" src="../Images/Navegacion/Ayuda.gif" border="0" name="DescripcionAreaAyuda"></a>
                                                            </td>
                                                            <td width="9%" align="right"><b>Genera Alerta</b></td>
                                                            <td width="2%" align="right">

                                                                <input type="checkbox" id="Checkbox2" name="chkGeneraAlerta" value="0" onclick="javascript:GeneraAlertaClick();">


                                                            </td>
                                                            <td width="1%"></td>
                                                            <td width="6%" class="campos" align="right"><b>Dias Aviso</b></td>
                                                            <td width="1%"></td>
                                                            <td width="4%">
                                                                <input class="formobj" Id="DiasAviso" Name="DiasAviso" Value="0" onkeypress="javascript: return validKeyEvent(event, 'DiasAviso', 'INTEGER')"
                                                                       maxlength="3">
                                                            </td>
                                                            <td width="1%"></td>
                                                            <td width="7%" class="campos" align="right"><b>Horas Aviso</b></td>
                                                            <td width="1%"></td>
                                                            <td width="3%">
                                                                <input class="formobj" Id="HorasAviso" Name="HorasAviso" Value="0" onkeypress="javascript: return validKeyEvent(event, 'HorasAviso', 'INTEGER')"
                                                                       maxlength="3">
                                                            </td>
                                                            <td width="1%"></td>
                                                        </tr>
                                                    </table>


                                                    <!-- Separador -->
                                                    <table class="tablaAbmImpar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table19">
                                                        <tr><td height="3" width="100%"></td></tr>
                                                    </table>
                                                    <!-- /Separador -->
                                                    <!-- Archivo del movimiento -->
                                                    <table class="subEncabezado" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table7">
                                                        <tr><td width="100%" height="15" align="center"><b>Archivo del movimiento</b></td></tr>
                                                    </table>
                                                    <!-- /Archivo del movimiento -->
                                                    <!-- Archivo -->
                                                    <table class="tablaAbmImpar" border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table10">
                                                        <tr class="campos">
                                                            <td width="1%" height="30"></td>
                                                            <td width="12%" align="right"><b>Archivo</b>&nbsp;</td>
                                                            <td width="1%"></td>
                                                            <td width="66%">
                                                                <font color="red">No se ha especificado ningún archivo</font>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;

                                                            </td>
                                                            <td width="1%"></td>
                                                            <td width="18%" align="right">
                                                                <div id="labelShowdivCambiarArchivo" class="camposDestacados"
                                                                     onmouseover="this.style.cursor='pointer';imglabelShowdivCambiarArchivo.src='../images/navegacion/expandirOn.gif';window.status='+ Cambiar Archivo';return true;"
                                                                     onmouseout="this.style.cursor='default';imglabelShowdivCambiarArchivo.src='../images/navegacion/expandir.gif';window.status='';return true;"
                                                                     onclick="javascript:HideControl('labelShowdivCambiarArchivo');ShowControl('labelHidedivCambiarArchivo');ShowControl('divCambiarArchivo');"><b>+ Cambiar Archivo</b>&nbsp;<img alt="+ Cambiar Archivo" src="../images/navegacion/expandir.gif" border="0" name="imglabelShowdivCambiarArchivo" align="absmiddle">&nbsp;&nbsp;</div>


                                                                <div id="labelHidedivCambiarArchivo" class="camposDestacados" style="display:none"
                                                                     onmouseover="this.style.cursor='pointer';imglabelHidedivCambiarArchivo.src='../images/navegacion/contraerOn.gif';window.status='- Cambiar Archivo';return true;"
                                                                     onmouseout="this.style.cursor='default';imglabelHidedivCambiarArchivo.src='../images/navegacion/contraer.gif';window.status='';return true;"
                                                                     onclick="javascript:ShowControl('labelShowdivCambiarArchivo');HideControl('labelHidedivCambiarArchivo');HideControl('divCambiarArchivo');"><b>- Cambiar Archivo</b>&nbsp;<img alt="- Cambiar Archivo" src="../images/navegacion/contraer.gif" border="0" name="imglabelHidedivCambiarArchivo" align="absmiddle">&nbsp;&nbsp;</div>



                                                            </td>
                                                            <td width="1%"></td>
                                                        </tr>
                                                    </table>
                                                    <!-- /Archivo -->
                                                    <!-- Cambiar Archivo -->
                                                    <div id="divCambiarArchivo" style="display:none">
                                                        <table class="tablaAbmPar" border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table9">
                                                            <tr class="campos">
                                                                <td width="1%" height="30"></td>
                                                                <td width="12%" align="right"><b><font color="red">*</font>Tipo Archivo</b></td>
                                                                <td width="1%"></td>
                                                                <td width="20%">
                                                                    <select id="TipoArchivoId" name="TipoArchivoId" class="formobj">
                                                                        <option value="" selected> --Seleccione--</option>
                                                                        <option value="2">Archivo de uso general</option>
                                                                    </select>

                                                                </td>
                                                                <td width="1%"></td>
                                                                <td width="15%" align="right"><b><font color="red">*</font>Nuevo archivo</b></td>
                                                                <td width="1%"></td>
                                                                <td width="48%">
                                                                    <input size="50" Type="File" class="formobj" Id="MovimientoArchivo" Name="MovimientoArchivo" maxlength="200">
                                                                </td>
                                                                <td width="1%"></td>
                                                            </tr>
                                                        </table>
                                                        <!-- /Cambiar Archivo -->
                                                        <!-- Descripci�n | Publicar -->
                                                        <table class="tablaAbmImpar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table6">
                                                            <tr class="campos">
                                                                <td width="1%" height="30"></td>
                                                                <td width="12%" align="right"><b><font color="red">*</font>Descripci�n</b></td>
                                                                <td width="1%"></td>
                                                                <td width="68%" align="right">
                                                                    <input class="formobj" Id="ArchivoDescripcion" Name="ArchivoDescripcion" Value="" maxlength="2000">
                                                                </td>
                                                                <td width="1%"></td>
                                                                <td width="9%" align="right"><b><font color="red">*</font>Publicar</b></td>
                                                                <td width="1%"></td>
                                                                <td width="6%">
                                                                    <select id="ArchivoPublico" name="ArchivoPublico" class="formobj" width="100%">
                                                                        <option value="" selected>--Seleccione--</option>
                                                                        <option value="0">No</option>
                                                                        <option value="1">S&#237;</option>
                                                                    </select>

                                                                </td>
                                                                <td width="1%"></td>
                                                            </tr>
                                                        </table>
                                                        <!-- /Descripci�n | Publicar -->
                                                    </div>
                                                    <!-- /Cambiar Archivo -->
                                                    <!-- Escritos -->
                                                    <table class="subEncabezado" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table8">
                                                        <tr><td width="100%" height="15" align="center"><b>Escritos</b></td></tr>
                                                    </table>
                                                    <!-- /Escritos -->
                                                    <!-- Separador -->
                                                    <table cellSpacing="0" cellPadding="0" width="100%" border="0">
                                                        <tr><td width="100%" height="10"></td></tr>
                                                    </table>
                                                
                                                    <!-- /Separador -->
                                                    <!-- TABLA TITULO -->
                                                    <table cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                                        <tbody>
                                                            <tr>
                                                                <td class="TablaEncabezadoTitulos" width="40%" height="22" align="center">
                                                                    &nbsp;&nbsp;ESCRITOS DEL MOVIMIENTO
                                                                </td>
                                                                <td width="60%" align="right">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!-- FIN TABLA TITULO -->
                                                    <table class="TablaEncabezado" cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                                        <tbody>
                                                            <tr>

                                                                <td vAlign=top>


                                                                    <div id="divEscritosGrilla">
                                                                        <!-- TABLA -->
                                                                        <table class="tablaAbmPar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table11">
                                                                            <tr class="campos">
                                                                                <td width="100%" height="30" align="center">

                                                                                    <table class="tablaAbmPar" border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table500">
                                                                                        <tr>
                                                                                            <td width="2%" height="35"></td>
                                                                                            <td width="29%">
                                                                                                <!-- ModeloDescripcion | Descripcion -->
                                                                                                <table>
                                                                                                    <tr class="camposDestacados">
                                                                                                        <td width="100%">Cédula de notificacion Resolución</td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                <!-- /ModeloDescripcion | Descripcion -->
                                                                                            </td>


                                                                                            <td width="11%"></td>

                                                                                            <td width="7%" class="Campos">29/8/2016</td>
                                                                                            <td width="7%">

                                                                                                <a href="javascript:EscritoTextoEditar(786299, 'C&amp;#233;dula de notificacion Resoluci&amp;#243;n')" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1">
                                                                                                    <img src="../images/menus/editar_16x16.gif" border="0" align="absmiddle"> Texto
                                                                                                </a>

                                                                                            </td>

                                                                                            <!-- BOTON IMPRIMIR ANTIGUO NO VA MAS-->
                                                                                            <!--<td width="1%"></td>
                                                                                            <td width="10%">
                                                                                                < % '= getEscritoBtnImprimir(XmlRow.selectSingleNode("@EscritoId").Text) %>
                                                                                            </td>-->

                                                                                            <td width="1%"></td>

                                                                                            <td width="7%">
                                                                                                <a href="javascript:EscritoEliminar(786299)" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1">
                                                                                                    <img src="../images/menus/baja_16x16.gif" border="0" align="absmiddle"> Eliminar
                                                                                                </a>
                                                                                            </td>

                                                                                            <td width="1%"></td>
                                                                                            <td width="12%">
                                                                                                <a href="javascript:EscritoAbrirCon(786299, 'Word')" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1">
                                                                                                    <img src="../images/menus/editar_16x16.gif" border="0" align="absmiddle"> Abrir Con Word
                                                                                                </a>

                                                                                            </td>
                                                                                            <td width="1%"></td>


                                                                                            <td width="21%">
                                                                                                <select id="PlantillaId299" name="PlantillaId299" class="formobj">
                                                                                                    <option value="3">ESCRITO JUDICIAL A4</option>
                                                                                                    <option value="10">ESCRITO JUDICIAL A4 - MPYT</option>
                                                                                                    <option value="8">ESCRITO JUDICIAL A4 OFICIOS BCRA</option>
                                                                                                    <option value="11">ESCRITO JUDICIAL A4 OFICIOS BCRA - MPYT</option>
                                                                                                    <option value="6">ESCRITO JUDICIAL A4 SIN MEMBRETE</option>
                                                                                                    <option value="1" selected>ESCRITO JUDICIAL OFICIO</option>
                                                                                                    <option value="9">ESCRITO JUDICIAL OFICIO - MPYT</option>
                                                                                                    <option value="5">ESCRITO JUDICIAL OFICIO SIN MEMBRETE</option>
                                                                                                </select>


                                                                                            </td>
                                                                                        </tr>

                                                                                    </table>

                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <!-- /divEscritosGrilla -->
                                                                   
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!-- FIN FORMULARIO -->
                                                    <table border="0"><tr><td height="3px"></td></tr></table>

                                                    <!-- Boton Agregar Escrito -->
                                                    <div id="divAgregarEscrito" style="display:block">
                                                        <table border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table18">
                                                            <tr class="campos">
                                                                <td width="1%"></td>
                                                                <td align="left" height="25" width="49%"><font color=#000000><b>Si no puede abrir el documento con Word, haga click </b></font><font color=#cc00ff><b><A HREF="javascript:AbrirAyuda();">Aquí</A></b></font></td>

                                                                <td align="right" height="25" width="49%">
                                                                    <input type="button" name="agregar" style="width:100px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" onclick="javascript:agregarFila('Table500');return false;" value="Agregar Escrito"> </input>
                                                                </td>

                                                                <td width="1%"></td>
                                                            </tr>
                                                            <tr><td height="5"></td></tr>
                                                        </table>
                                                    </div>
                                                    <!-- /Boton Agregar Escrito -->
                                                    <!-- Botones Aceptar Cancelar-->
                                                    <div id="divEscritosBotones" style="display:none">
                                                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table16">
                                                            <tr>
                                                                <td align="right" width="97%">
                                                                    <button name="btnEscritoAceptar" style="width:70px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" onclick="javascript:EscritoAceptarNew();return false;">Grabar</button>
                                                                    &nbsp<button name="btnEscritoCancelar" style="width:70px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" onclick="javascript:EscritoCancelar();return true;">Cancelar</button>
                                                                </td>
                                                                <td width="3%">&nbsp;&nbsp;</td>
                                                            </tr>
                                                            <tr><td align="right" width="100%" height="5"></td></tr>
                                                        </table>
                                                    </div>
                                                        

                             <!-- TABLA TITULO ARCHIVOS -->
                                                            <table cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="TablaEncabezadoTitulos" width="40%" height="22" align="center">
                                                                            &nbsp;&nbsp;ARCHIVOS DEL MOVIMIENTO
                                                                        </td>
                                                                        <td width="60%" align="right">
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <table class="TablaEncabezado" cellSpacing="0" cellPadding="0" width="98%" border="0" align="center">
                                                                <tbody>
                                                                    <tr>
        
                                                                        <td vAlign=top>
        
        
                                                                            <div id="divEscritosGrilla">
                                                                                <!-- TABLA -->
                                                                                <table class="tablaAbmPar" cellSpacing="0" cellPadding="0" width="100%" border="0" ID="Table13">
                                                                                    <tr class="campos">
                                                                                        <td width="100%" height="30" align="center">
        
                                                                                            <table class="tablaAbmPar" border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table1000">
                                                                                                <tr>
                                                                                                    <td width="2%" height="35"></td>
                                                                                                    <td width="29%">
                                                                                                        <!-- ModeloDescripcion | Descripcion -->
                                                                                                        <table>
                                                                                                            <tr class="camposDestacados">
                                                                                                                <td width="100%">
                                                                                                                    <img  width="10%" src="../images/pdf.png" border="0" align="absmiddle">
                                                                                                                    Adjunto N°1
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                        <!-- /ModeloDescripcion | Descripcion -->
                                                                                                    </td>
        
        
                                                                                                    <td width="11%"></td>
        
                                                                                                    <td width="7%" class="Campos">29/8/2016</td>
                                                                                                    <td width="7%">
        
                                                                                                        <a  class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1">
                                                                                                            <img src="../images/menu/edit.png" border="0" align="absmiddle"> Adjunto
                                                                                                        </a>
        
                                                                                                    </td>
        
                                                                                                    <td width="1%"></td>
        
                                                                                                    <td width="7%">
                                                                                                        <a onclick="javascript:eliminarFila('Table11');return false;" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1">
                                                                                                            <img src="../images/menus/baja_16x16.gif" border="0" align="absmiddle"> Eliminar
                                                                                                        </a>
                                                                                                    </td>
        
                                                                                                    <td width="1%"></td>
                                                                                                    <td width="12%">
                                                                                                       <!--TD VACIO-->
                                                                                                    </td>
                                                                                                    <td width="1%"></td>
        
        
                                                                                                    <td width="21%">
                                                                                                        <input type="file">
                                                                                                        <!--modificar si es necesario-->
                                                                                                    </td>

        
                                                                                                </tr>
        
                                                                                            </table>
        
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </div>
                                                                            <!-- /divEscritosGrilla -->
                                                                          
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                           
                                                            </table>
                                                            <!-- FIN TABLA TITULO ARCHIVOS -->

                                                        <!-- FIN FORMULARIO -->
                                                    <table border="0"><tr><td height="3px"></td></tr></table>
                 <!-- /Boton Agregar Archivo -->
                                                    <div id="divAgregarEscrito" style="display:block">
                                                        <table border="0" cellSpacing="0" cellPadding="0" width="100%" ID="Table18">
                                                            <tr class="campos">
                                                                <td width="1%"></td>
                    
                                                                <td align="right" height="25" width="49%">
                                                                    <input name="agregar" style="width:100px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" onclick="javascript:agregarFila('Table1000');return false;" value="Agregar Archivo"> </input>
                                                                </td>

                                                                <td width="1%"></td>
                                                            </tr>
                                                            <tr><td height="5"></td></tr>
                                                        </table>
                                                    </div>
                                                    <!-- /Botones Aceptar Cancelar-->
                                               
                                                </td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
     
                                    <!-- FIN FORMULARIO -->
                                    <table border="0">
                                        <tr>
                                            <td height="3px"></td>
                                        </tr>
                                    </table>
                                       
                                    </fieldset>
                                    <!-- Botones -->
                                    <div id="divBotones">
                                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" ID="TButtons">
                                            <tr>

                                                <td align="right" width="50%">
                                                    <table align="center" cellSpacing="0" cellPadding="0" width="98%" border="0">
                                                        <tr>
                                                            <td align="right" width="100%">
                                                                <button name="Grabar" style="width:70px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" accesskey="g" onclick="javascript:FireEvent('Grabar')"><u>G</u>rabar</button>
                                                                &nbsp;
                                                                <button name="Cancelar" style="width:70px" class="buttonNew" onMouseOver="this.style.color='#308D02'; this.style.cursor='pointer';" onMouseOut="this.style.color='#000000'; this.style.cursor='default';" accesskey="c" onclick="javascript:FireEvent('Cancelar')"><u>C</u>ancelar</button>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                    <!-- SOLO SI ESTOY EN MODO IMPRIMIR -->

                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- /Botones -->
                                
                                </div>
                                <!-- FIN divAbmForm -->
                                <table border="0"><tr><td height="3px"></td></tr></table>
                            </td>
                        </tr>
                    </table>

                </td>
                <!-- /Panel General -->
                <td width="2%"></td>
            </tr>
        </table>
        <!-- /Tabla Principal -->
    </form>

</body>
<!--
    Esto es para que no cachee las paginas
    VER http://support.microsoft.com/kb/222064
-->
<HEAD>
    <META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
</HEAD>

</html>


    <script>
        function agregarFila(id){
            //si es Table11 o Table12
            if(id == "Table500"){
                document.getElementById(id).insertRow(-1).innerHTML = ' <td width="2%" height="35"></td><td width="29%"><table><tr class="camposDestacados"><td width="100%">Cédula de notificacion Resolución</td></tr></table></td><td width="11%"></td><td width="7%" class="Campos">29/8/2016</td><td width="7%"><a class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1"><img src="../images/menus/editar_16x16.gif" border="0" align="absmiddle"> Texto</a></td><td width="1%"></td><td width="7%"><a href="javascript:EscritoEliminar(786299)" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1"><img src="../images/menus/baja_16x16.gif" border="0" align="absmiddle"> Eliminar</a></td><td width="1%"></td><td width="12%"><a class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1"><img src="../images/menus/editar_16x16.gif" border="0" align="absmiddle"> Abrir Con Word</a></td><td width="1%"></td><td width="21%"><select id="PlantillaId299" name="PlantillaId299" class="formobj"><option value="3">ESCRITO JUDICIAL A4</option><option value="10">ESCRITO JUDICIAL A4 - MPYT</option><option value="8">ESCRITO JUDICIAL A4 OFICIOS BCRA</option><option value="11">ESCRITO JUDICIAL A4 OFICIOS BCRA - MPYT</option><option value="6">ESCRITO JUDICIAL A4 SIN MEMBRETE</option><option value="1" selected>ESCRITO JUDICIAL OFICIO</option><option value="9">ESCRITO JUDICIAL OFICIO - MPYT</option><option value="5">ESCRITO JUDICIAL OFICIO SIN MEMBRETE</option></select></td>';
            }else{
                document.getElementById(id).insertRow(-1).innerHTML = ' <td width="2%" height="35"></td><td width="29%"><table><tr class="camposDestacados"><td width="100%"><img  width="10%" src="../images/pdf.png" border="0" align="absmiddle">Adjunto</td></tr></table></td><td width="11%"></td><td width="7%" class="Campos">29/8/2016</td><td width="7%"><a href="" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1"><img src="../images/menu/edit.png" border="0" align="absmiddle"> Adjunto</a></td><td width="1%"></td><td width="7%"><a onclick="javascript:eliminarFila();return false;" class="ContentLeftLinks" align="absmiddle" style="COLOR: black; font-size: 11px; font-weight: normal" tabindex="-1"><img src="../images/menus/baja_16x16.gif" border="0" align="absmiddle"> Eliminar</a></td><td width="1%"></td><td width="12%"></td><td width="1%"></td><td width="21%"><input type="file"></td>';
            }
        }
        
        function eliminarFila(){
            var table = document.getElementById(id);
            var rowCount = table.rows.length;
            console.log(rowCount);
            
            if(rowCount <= 1)
            alert('No se puede eliminar el encabezado');
            else
            table.deleteRow(rowCount -1);
        }

    </script>
   

<script type="text/javascript" src="../scripts/prototype.js"></script>
<script type="text/javascript" src="../scripts/abm.js"></script>
<script type="text/javascript" src="../scripts/date.js"></script>

<script language=javascript>
Event.observe(window, 'load', restorePageState, false);
//-->
</script>

<script language=javascript>
Event.observe(window, 'load', restorePageState, false);
//-->
</script>



<!-- Fin CloseLayout -->