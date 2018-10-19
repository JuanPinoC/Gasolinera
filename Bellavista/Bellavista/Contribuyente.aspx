<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contribuyente.aspx.cs" Inherits="Bellavista.Contribuyente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bellavista</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-8 mr-auto ml-auto">
                <br />
                <div class="jumbotron">
                    <h1>
                        Contribuyente
                        <asp:Label ID="labelCodigo" runat="server" Text="Código"></asp:Label>
                        <asp:Label ID="lblCodigo" runat="server" Text="00000"></asp:Label>
                    </h1>
                </div>
                <div class="form-group bg-light">
                    <br />
                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label1" runat="server" Text="Empresa" AssociatedControlID="txtEmpresa"></asp:Label>
                        <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control" placeholder="Ingrese empresa"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label3" runat="server" Text="RUC" AssociatedControlID="txtRUC"></asp:Label>
                        <asp:TextBox ID="txtRUC" runat="server" CssClass="form-control" placeholder="Ingrese RUC"></asp:TextBox>
                    </div>

                    
                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label4" runat="server" Text="Departamento" AssociatedControlID="txtDepartamento"></asp:Label>
                        <asp:TextBox ID="txtDepartamento" runat="server" CssClass="form-control" placeholder="Ingrese departamento"></asp:TextBox>
                    </div>

                    
                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label6" runat="server" Text="Provincia" AssociatedControlID="txtProvincia"></asp:Label>
                        <asp:TextBox ID="txtProvincia" runat="server" CssClass="form-control" placeholder="Ingrese provincia"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label8" runat="server" Text="Distrito" AssociatedControlID="txtDistrito"></asp:Label>
                        <asp:TextBox ID="txtDistrito" runat="server" CssClass="form-control" placeholder="Ingrese distrito"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label9" runat="server" Text="Dirección" AssociatedControlID="txtDireccion"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingrese dirección"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="label2" runat="server" Text="IGV"></asp:Label>
                        <asp:TextBox ID="txtIGV" runat="server" CssClass="form-control" placeholder="Ingrese IGV"></asp:TextBox>
                    </div>

                    <div class="col-md-4 mb-3">
                        <asp:Label ID="Label5" runat="server" Text="Impresora" AssociatedControlID="txtImpresora"></asp:Label>
                        <asp:TextBox ID="txtImpresora" runat="server" CssClass="form-control" placeholder="Seleccione impresora"></asp:TextBox>
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
