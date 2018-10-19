<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoFacturas.aspx.cs" Inherits="Bellavista.ListadoFacturas" %>

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
    <form id="listForm" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <br />
            <center><h1>Listado de Facturas</h1></center>
            <br />
        </div>

        <div class="col-sm-12">
            <center>
                <asp:HyperLink ID="hlCrear" runat="server" CssClass="btn btn-lg btn-success" 
                    NavigateUrl="./Factura.aspx">Crear</asp:HyperLink>
            </center>
            <br />
        </div>

        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <asp:Table ID="tableList" runat="server" CssClass="table table-hover table-primary">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Código</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Venta</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Razón Social</asp:TableHeaderCell>
                    <asp:TableHeaderCell>RUC</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Pretotal</asp:TableHeaderCell>
                    <asp:TableHeaderCell>IGV</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Total</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Opciones</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>00001</asp:TableCell>
                    <asp:TableCell>Razón Social</asp:TableCell>
                    <asp:TableCell>23034935</asp:TableCell>
                    <asp:TableCell>S/. 10</asp:TableCell>
                    <asp:TableCell>S/. 1.80</asp:TableCell>
                    <asp:TableCell>S/. 11.80</asp:TableCell>
                    <asp:TableCell>
                            <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-warning"/>
                            <span/>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger"/>
                    </asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>
        </div>
    </div>
    </form>
</body>
</html>
