<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frmviajes.aspx.cs" Inherits="viajes_otros_componentes.Frmviajes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: "Bahnschrift Light";
            font-size: medium;
            font-weight: bold;
        }
        .auto-style3 {
            font-family: "Bahnschrift Light";
            font-size: medium;
            font-weight: bold;
            width: 700px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Ciudad destino</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="Ddlciudad" runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="Ddlciudad_SelectedIndexChanged">
                        <asp:ListItem>Cartagena</asp:ListItem>
                        <asp:ListItem Selected="True">Santa Marta</asp:ListItem>
                        <asp:ListItem>Leticia</asp:ListItem>
                        <asp:ListItem>Miami</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblciudad" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hotel</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="Rblhotel" runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="Rblhotel_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Decameron</asp:ListItem>
                        <asp:ListItem>Hilton</asp:ListItem>
                        <asp:ListItem>Sol Caribe</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblhotel" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Numero de personas</td>
                <td class="auto-style2">
                    <asp:TextBox ID="Txtcantidad" runat="server" Font-Size="Medium"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Opcionales</td>
                <td class="auto-style2">
                    <asp:CheckBox ID="Cbguia" runat="server" AutoPostBack="True" Font-Size="Medium" OnCheckedChanged="Cbguia_CheckedChanged" Text="Opcion de Guia" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblguia" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Automovil</td>
                <td class="auto-style2">
                    <asp:CheckBox ID="Cbautomovil" runat="server" AutoPostBack="True" Font-Size="Medium" OnCheckedChanged="Cbautomovil_CheckedChanged" Text="Opcion de Automovil" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblautomovil" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Total del viaje</td>
                <td class="auto-style2">
                    <asp:Label ID="Lbltotal" runat="server" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Btncalcular" runat="server" BackColor="#00CC00" Font-Bold="True" Font-Size="Medium" ForeColor="Black" OnClick="Btncalcular_Click" Text="Calcular viaje" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblmensaje" runat="server" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
