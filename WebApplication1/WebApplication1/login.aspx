<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet"/>

</head>
<body class="gray-bg">
    <form id="Login" method="post" runat="server">
        <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h3 class="font-bold">Bienvenidos</h3>

                <p>
                   Sistema de informacion para la adminstracion de contratos
                </p>
                <img src="img/logo1.jpg" style="width: 300px;padding-top: 40px;" />

            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                        <div class="form-group">
                           <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                        <div class="form-group">
                         <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Iniciar sesion" CssClass="btn btn-danger block full-width m-b" OnClick="Button1_Click" />
                        <asp:Label ID="errorLabel" runat="server" Text="" CssClass="text-color:red"></asp:Label>
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
   </form>	
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
