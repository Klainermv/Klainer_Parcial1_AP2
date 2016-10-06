<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCantidades.aspx.cs" Inherits="SolicitudDeMateriales.Registros.RegistroCantidades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 73px" Text="Buscar" />
    
    </div>
        Cantidad<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" style="margin-right: 0px; margin-top: 42px" Text="Nuevo" Width="73px" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="margin-left: 208px" Text="Guardar" Width="80px" />
        <asp:Button ID="Button4" runat="server" style="margin-left: 177px" Text="Eliminar" Width="80px" />
    </form>
</body>
</html>
