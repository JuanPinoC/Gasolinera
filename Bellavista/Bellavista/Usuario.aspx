<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Bellavista.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bellavista</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script> 
        $(function(){
          $("#menu").load("Menu.html"); 
        });
    </script>
</head>
<body>
    <div id="menu"></div>
    <br />
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-8 mr-auto ml-auto">
                <br />
                <div class="jumbotron">
                    <h1>
                        Usuario
                        <asp:Label ID="labelCodigo" runat="server" Text="Código"></asp:Label>
                        <asp:Label ID="lblCodigo" runat="server" Text="00000"></asp:Label>
                    </h1>
                </div>
                <div class="form-group bg-light">
                    <br />
                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label1" runat="server" Text="Nombres y Apellidos" AssociatedControlID="txtNomApe"></asp:Label>
                        <asp:TextBox ID="txtNomApe" runat="server" CssClass="form-control" placeholder="Ingrese nombres y apellidos"></asp:TextBox>
                    </div>

                    <div class="col-md-6 mb-3">
                        <asp:Label ID="Label7" runat="server" Text="Tipo" AssociatedControlID="ddlTipo"></asp:Label>
                        <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Administrador" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Empleado" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
      
                    <div class="col-md-6 mb-3">
                        <asp:Label ID="Label5" runat="server" Text="Login" AssociatedControlID="txtNickname"></asp:Label>
                        <asp:TextBox ID="txtNickname" runat="server" CssClass="form-control" placeholder="Ingrese Nickname"></asp:TextBox>
                    </div>

                    <div class="col-md-6 mb-3">
                        <asp:Label ID="Label2" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingrese Password"></asp:TextBox>
                    </div>
                    
                    <div class="col-md-6 mb-3">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary btn-lg" />
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger btn-lg" />
                    </div>
                    
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
