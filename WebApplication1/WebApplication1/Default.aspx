﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myApp">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drummond.Ltda | Index</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Data Tables -->
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet">
    <link href="css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet" />
    <link rel=" stylesheet" href="https://cdn.rawgit.com/esvit/ng-table/v1.0.0/dist/ng-table.min.css">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

    <link href="css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="css/plugins/select2/select2.min.css" rel="stylesheet">
</head>
<body  class="md-skin fixed-sidebar fixed-nav pace-done" id="body">
    <form id="form1" runat="server">
    <div>
      <div id="wrapper" ng-controller="indexController">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse" style="overflow: hidden; width: auto; height: 100%;">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span>
                                <img alt="image" class="img-circle" src="img/profile_small.jpg" />
                            </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs">
                                        <strong class="font-bold">David Williams</strong>
                                    </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span>
                                </span>
                            </a>

                        </div>
                        <div class="logo-element">
                            SAC
                        </div>
                    </li>
                    <li class="active">
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Inicio</span></a>
                    </li>
                    <li class="">
                        <a><i class="fa fa-tasks"></i> <span class="nav-label">Proyecto</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="height: 0px;">

                            <li><a href="#/Proyectos/Proyectos">Gestión de Proyectos</a></li>
                            <li><a href="#/Proyectos/ProCompetitivo">Proceso Competitivo</a></li>
                            <li class="" style="padding-left:9px">
                                <a href="#">Oferta Mercantil<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level collapse" style="height: 0px;">
                                    <li style="padding-left:10px">
                                        <a href="#/OFM/REGOFM">Registro</a>
                                    </li>
                                    <li style="padding-left:16px">
                                        <a href="#/OFM/OP">Orden de Compra</a>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li><a href="#/Notificaciones"><i class="fa fa-bell"></i><span class="nav-label">Notificaciones</span></a></li>
                    <li><a href="#/Historial"><i class="fa fa-folder"></i><span class="nav-label">Historial</span></a></li>
                    <li class="">
                        <a><i class="fa fa-tasks"></i> <span class="nav-label">Configuración</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse" style="height: 0px;">
                            <li class="">
                                <a href="#">Datos básicos<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level collapse" style="height: 0px;">
                                    <li style="padding-left:9px">
                                        <a href="#/DatosBasicos/Configuracion">Contrato</a>
                                    </li>
                                    <li style="padding-left:9px">
                                        <a href="#/DatosBasicos/Confiproc">Familias y Categorias</a>
                                    </li>


                                </ul>
                            </li>

                            <li>
                                <a href="#/DatosBasicos/Aseguradoras">Aseguradoras</a>
                            </li>
                            <li>
                                <a href="#/DatosBasicos/Amparos">Amparos</a>
                            </li>

                        </ul>
                    </li>
                    <li><a href="#/DatosBasicos/ProjectManager"><i class="fa fa-user"></i><span class="nav-label">Project manager</span></a></li>
                    <li><a href="#/DatosBasicos/RegistroVendors"><i class="fa fa-group"></i><span class="nav-label">Vendors</span></a></li>

                </ul>
            </div>
        </nav>
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-fixed-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="" style="background-color:#DC1331;border-color: #DC1331;color: #FFFFFF;"><i class="fa fa-bars"></i></a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">

                        <li class="dropdown">
                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">46h ago</small>
                                            <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                            <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/a4.jpg"/>
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">5h ago</small>
                                            <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                            <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="img/profile.jpg"/>
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right">23h ago</small>
                                            <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                            <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="mailbox.html">
                                            <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i>  <span class="label label-primary" style="background-color:#000000;opacity:0.4; height: 16px;">8</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="mailbox.html">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="profile.html">
                                        <div>
                                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                            <span class="pull-right text-muted small">12 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="grid_options.html">
                                        <div>
                                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href="notifications.html">
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        
                        <li>
                          <asp:LinkButton ID="LinkButton1" runat="server">Cerrar sesion
                              <i class="fa fa-sign-out"></i>
                          </asp:LinkButton>    
                         </li>
                    </ul>
                </nav>
            </div>
            <!---class="row  border-bottom white-bg dashboard-header"--->
            <div ng-view></div>
        </div>
    </div>
    </div>
    </form>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Data Tables -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="js/plugins/dataTables/dataTables.tableTools.min.js"></script>


    <!-- Data picker -->
    <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <!-- Date range use moment.js same as full calendar plugin -->
    <script src="js/plugins/fullcalendar/moment.min.js"></script>
    <!-- Date range picker -->
    <script src="js/plugins/daterangepicker/daterangepicker.js"></script>


    <!-- GITTER -->
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <script src="js/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
    <!-----Script angular-->
    <!-- Select2 -->
    <script src="js/plugins/select2/select2.full.min.js"></script>

    <!--handsontable-->
    <script src="https://handsontable.com/static/bower_components/handsontable-pro/dist/handsontable.full.js"></script>

    <!--archivos para cargar excel-->
    <script src="js/xlsx/lodash.min.js"></script>
    <script src="js/xlsx/jszip.js"></script>
    <script src="js/xlsx/xlsx.js"></script>
    <script src="js/xlsx/xlsx-reader.js"></script>

    <!-- Main Angular scripts-->

    <script src="Angular/js/angular/angular.min.js"></script>
    <script src="Angular/js/bootstrap/ui-bootstrap-tpls-0.12.0.min.js"></script>
    <script src="Angular/js/angular/angular-route.min.js"></script>
    <script src="MyScript/Router/Enrutador.js"></script>
    <script src="js/ng-table.min.js"></script>
    <!-- Sweet alert -->
    <script src="js/plugins/sweetalert/sweetalert.min.js"></script>

    <script src="MyScript/Controller/indexController.js"></script>
    <script src="MyScript/Servicios/pServices.js"></script>
    <script src="MyScript/Controller/ConfiguracionController.js"></script>
    <script src="MyScript/Controller/confiprocompetitivoController.js"></script>
    <script src="MyScript/Controller/ProManagerController.js"></script>
    <script src="MyScript/Controller/AmparosController .js"></script>
    <script src="MyScript/Controller/AseguradorasController.js"></script>
    <script src="MyScript/Controller/ProyectosController.js"></script>
    <script src="MyScript/Controller/AspiranteController.js"></script>
    <script src="MyScript/Controller/ProCompetitivoController.js"></script>
    <script src="MyScript/Controller/Ofertamercantilontroller.js"></script>
    <script src="MyScript/Controller/ordencompraController.js"></script>




    <script>
        $(document).ready(function () {
            $("body").removeClass("skin-2");
            $("body").removeClass("skin-3");
            $("body").removeClass("skin-1");
            $("body").addClass("md-skin");

        });
    </script>
</body>
</html>
