<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoUsuarios.aspx.cs" Inherits="Bellavista.ListadoUsuarios" %>

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
            <center><h1>Listado de Usuarios</h1></center>
            <br />
        </div>

        <div class="col-sm-12">
            <center>
                <asp:HyperLink ID="hlCrear" runat="server" CssClass="btn btn-lg btn-success" 
                    NavigateUrl="./Usuario.aspx">Crear</asp:HyperLink>
            </center>
            <br />
        </div>

        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <asp:Table ID="tableList" runat="server" CssClass="table table-hover table-primary">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Código</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nombre y Apellidos</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Tipo</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nickname</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Password</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Opciones</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>Pedro Perez</asp:TableCell>
                    <asp:TableCell>Administrador</asp:TableCell>
                    <asp:TableCell>pperez</asp:TableCell>
                    <asp:TableCell>12345678</asp:TableCell>
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
