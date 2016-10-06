<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroMateriales.aspx.cs" Inherits="SolicitudDeMateriales.Registros.RegistroMateriales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 60px" Text="Buscar" />
        <br />
    
    </div>
        Material<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Nuevo" Width="82px" />
        <asp:Button ID="Button3" runat="server" style="margin-left: 188px" Text="Guardar" Width="82px" />
        <asp:Button ID="Button4" runat="server" style="margin-left: 197px" Text="Eliminar" Width="76px" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
