﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>SAC-drummond | Login</title>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body class="gray-bg">
    <form id="form1" runat="server">
    <div>
       
    <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h3 class="font-bold">Bienvenido,Sistema de administracion de contratos Drummond.LTDA</h3>

                <p>
                   Sistema de informacion para el manejor y control de contratos.
                </p>


            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form class="m-t" role="form" action="http://webapplayers.com/inspinia_admin-v2.3/index.html">
                        <div class="form-group">
                            <asp:TextBox ID="TextUser" CssClass="form-control" runat="server" placeholder="Usuario"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextPass" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="Btnlogin" CssClass="btn btn-danger block full-width m-b" runat="server" Text="Button" />
                    </form>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                Copyright Drummond.LTDA
            </div>
            <div class="col-md-6 text-right">
               <small>© 2016</small>
            </div>
        </div>
    </div>

    </div>
    </form>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $("body").removeClass("skin-2");
            $("body").removeClass("skin-3");
            $("body").removeClass("skin-1");
            $("body").addClass("md-skin");
        </script>
</body>
</html>
