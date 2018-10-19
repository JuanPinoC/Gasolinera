<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoVentas.aspx.cs" Inherits="Bellavista.ListadoVentas" %>

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
            <center><h1>Listado de Ventas</h1></center>
            <br />
        </div>

        <div class="col-sm-12">
            <center>
                <asp:HyperLink ID="hlCrear" runat="server" CssClass="btn btn-lg btn-success" 
                    NavigateUrl="./Venta.aspx">Crear</asp:HyperLink>
            </center>
            <br />
        </div>

        <div class="col-sm-1"></div>
        <div class="col-sm-10">
            <asp:Table ID="tableList" runat="server" CssClass="table table-hover table-primary">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Código</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Usuario</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Producto</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Medida</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Cantidad</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Fecha</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Contribuyente</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Cliente</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Sede</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Placa</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Observación</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Opciones</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>Pedro Perez</asp:TableCell>
                    <asp:TableCell>Diesel</asp:TableCell>
                    <asp:TableCell>Galones</asp:TableCell>
                    <asp:TableCell>10</asp:TableCell>
                    <asp:TableCell> 10/10/2018</asp:TableCell>
                    <asp:TableCell>Bellavista</asp:TableCell>
                    <asp:TableCell>John Doe</asp:TableCell>
                    <asp:TableCell>Arequipa</asp:TableCell>
                    <asp:TableCell>DF0004</asp:TableCell>
                    <asp:TableCell>Sin observaciones.</asp:TableCell>
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
