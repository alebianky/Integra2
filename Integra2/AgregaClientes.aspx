<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregaClientes.aspx.cs" Inherits="Integra2.AgregaClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; Agregar Clientes</h1>
    <p>
        &nbsp;</p>
    <p>
        <table style="font-size: medium">
            <tr>
                <td style="width: 174px; height: 29px;">Nombre:</td>
                <td style="height: 29px; width: 294px;">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38" Width="190px"></asp:TextBox>
                </td>
                <td style="width: 308px; height: 29px;">&nbsp;&nbsp; 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Apellido</td>
                <td style="width: 294px">
                    <asp:TextBox ID="TextBox2" runat="server" tyle="margin-left: 38" Width="190px"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 174px">DNI:</td>
                <td style="width: 294px">
                    <asp:TextBox ID="TextBox3" runat="server" tyle="margin-left: 38" Width="190px" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Fecha Nacimiento:</td>
                <td style="width: 294px">
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" style="font-size: small" Width="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" SelectionMode="DayWeekMonth" SelectedDate="02/24/2021 15:58:02">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 174px">&nbsp;</td>
                <td style="width: 294px">
                    &nbsp;</td>
                <td style="width: 308px">
                    <br />
                 </td>
            </tr>
            <tr>
                <td style="width: 174px">Tipo de Tarjeta</td>
                <td style="width: 294px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Mastercard</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                        <asp:ListItem>Cabal</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 174px; height: 82px;">Numero de Tarjeta:</td>
                <td style="width: 294px; height: 82px;">
                    <asp:TextBox ID="TextBox5" runat="server" Width="248px" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 308px; height: 82px;">
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 174px">Vencimiento:</td>
                <td style="width: 294px">
                    <asp:TextBox ID="TextBox7" runat="server" MaxLength="2"  Width="35px">MM</asp:TextBox>
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="2" Width="35px">AA</asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 174px">Codigo Seguridad</td>
                <td style="width: 294px">
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="3" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
                <tr>
                <td style="width: 174px"></td>
                <td style="width: 294px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Grabar" />
                </td>
                <td style="width: 308px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Volver" />
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>

    </p>
</asp:Content>
