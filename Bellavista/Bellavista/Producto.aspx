<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Bellavista.Producto" %>

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
                        Producto
                        <asp:Label ID="labelCodigo" runat="server" Text="Código"></asp:Label>
                        <asp:Label ID="lblCodigo" runat="server" Text="00000"></asp:Label>
                    </h1>
                </div>
                <div class="form-group bg-light">
                    <br />
                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label1" runat="server" Text="Producto" AssociatedControlID="txtNombre"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese nombre"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label2" runat="server" Text="Precio" AssociatedControlID="txtPrecio"></asp:Label>
                        <asp:TextBox ID="txtPrecio" type="number" runat="server" CssClass="form-control" placeholder="Ingrese precio"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label3" runat="server" Text="Medida" AssociatedControlID="txtMedida"></asp:Label>
                        <asp:TextBox ID="txtMedida" runat="server" CssClass="form-control" placeholder="Ingrese medida"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label4" runat="server" Text="Cantidad" AssociatedControlID="txtCantidad"></asp:Label>
                        <asp:TextBox ID="txtCantidad" type="number" runat="server" CssClass="form-control" placeholder="Ingrese cantidad"></asp:TextBox>
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
