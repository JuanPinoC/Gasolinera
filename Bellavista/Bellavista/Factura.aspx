<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="Bellavista.Factura" %>

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
                        Factura
                        <asp:Label ID="labelCodigo" runat="server" Text="Código"></asp:Label>
                        <asp:Label ID="lblCodigo" runat="server" Text="00000"></asp:Label>
                    </h1>
                </div>
                <div class="form-group bg-light">
                    <br />

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label8" runat="server" Text="Razón Social" AssociatedControlID="txtRazSoc"></asp:Label>
                        <asp:TextBox ID="txtRazSoc" runat="server" CssClass="form-control" placeholder="Ingrese razón social"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label9" runat="server" Text="RUC" AssociatedControlID="txtRUC"></asp:Label>
                        <asp:TextBox ID="txtRUC" runat="server" CssClass="form-control" placeholder="Ingrese RUC"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label12" runat="server" Text="Pretotal" AssociatedControlID="txtPreTotal"></asp:Label>
                        <asp:TextBox ID="txtPreTotal" type="number" runat="server" CssClass="form-control" placeholder="Ingrese pretotal"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="label13" runat="server" Text="IGV"></asp:Label>
                        <asp:Label ID="lblIGV" runat="server" Text="00000"></asp:Label>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label14" runat="server" Text="Total" AssociatedControlID="txtTotal"></asp:Label>
                        <asp:TextBox ID="txtTotal" type="number" runat="server" CssClass="form-control" placeholder="Ingrese total"></asp:TextBox>
                    </div>
                    
                    <div class="col-md-6 mb-3">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary btn-lg" />
                        <asp:Button ID="Button1" runat="server" Text="Cancelar" CssClass="btn btn-danger btn-lg" />
                    </div>
                    
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
