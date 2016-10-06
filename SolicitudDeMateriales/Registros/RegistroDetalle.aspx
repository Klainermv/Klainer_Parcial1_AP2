<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroDetalle.aspx.cs" Inherits="SolicitudDeMateriales.Registros.RegistroDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
        .auto-style2 {
            width: 96px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        ID
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-left: 21px" Text="Buscar" />
    
    </div>
        Razon<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Material</td>
                <td class="auto-style2">Cantidad</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Tela</td>
                <td class="auto-style2">
                    1</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Add" Width="56px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Material</td>
                <td class="auto-style2">Cantidad</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
            <asp:Button ID="Button5" runat="server" Text="Nuevo" Width="67px" />
            <asp:Button ID="Button6" runat="server" style="margin-left: 150px" Text="Guardar" />
            <asp:Button ID="Button7" runat="server" style="margin-left: 162px" Text="Eliminar" Width="62px" />
        </p>
    </form>
</body>
</html>
