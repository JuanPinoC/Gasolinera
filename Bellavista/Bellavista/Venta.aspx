<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venta.aspx.cs" Inherits="Bellavista.Venta" %>

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
                        Venta
                        <asp:Label ID="labelCodigo" runat="server" Text="Código"></asp:Label>
                        <asp:Label ID="lblCodigo" runat="server" Text="00000"></asp:Label>
                    </h1>
                </div>
                <div class="form-group bg-light px-2">
                    <br />

                    <div class="form-row">
                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label1" runat="server" Text="Usuario" AssociatedControlID="txtUsuario"></asp:Label>
                            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese usuario"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label2" runat="server" Text="Producto" AssociatedControlID="txtProducto"></asp:Label>
                            <asp:TextBox ID="txtProducto" runat="server" CssClass="form-control" placeholder="Ingrese producto"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label3" runat="server" Text="Medida" AssociatedControlID="txtMedida"></asp:Label>
                            <asp:TextBox ID="txtMedida" runat="server" CssClass="form-control" placeholder="Ingrese medida"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label6" runat="server" Text="Cantidad" AssociatedControlID="txtCantidad"></asp:Label>
                            <asp:TextBox ID="txtCantidad" type="number" runat="server" CssClass="form-control" placeholder="Ingrese cantidad"></asp:TextBox>
                        </div>

                        
                    </div>

                    <div class="form-row">
                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label9" runat="server" Text="Contribuyente" AssociatedControlID="txtContribuyente"></asp:Label>
                            <asp:TextBox ID="txtContribuyente" runat="server" CssClass="form-control" placeholder="Ingrese contribuyente"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label10" runat="server" Text="Cliente" AssociatedControlID="txtCliente"></asp:Label>
                            <asp:TextBox ID="txtCliente" runat="server" CssClass="form-control" placeholder="Ingrese cliente"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label11" runat="server" Text="Sede" AssociatedControlID="txtSede"></asp:Label>
                            <asp:TextBox ID="txtSede" runat="server" CssClass="form-control" placeholder="Ingrese sede"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label13" runat="server" Text="Placa" AssociatedControlID="txtPlaca"></asp:Label>
                            <asp:TextBox ID="txtPlaca" runat="server" CssClass="form-control" placeholder="Ingrese placa"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label14" runat="server" Text="Observación" AssociatedControlID="txtObservación"></asp:Label>
                            <asp:TextBox ID="txtObservación" type="textarea" runat="server" CssClass="form-control" placeholder="Ingrese observación"></asp:TextBox>
                        </div>

                        <div class="col-md-5 mb-3">
                            <asp:Label ID="Label8" runat="server" Text="Fecha" AssociatedControlID="calFecha"></asp:Label>
                            <asp:Calendar ID="calFecha" runat="server" ></asp:Calendar>
                        </div>
                    
                        <div class="col-md-5 mb-3">
                            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary btn-lg" />
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-danger btn-lg" />
                        </div>
                    </div>

                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
