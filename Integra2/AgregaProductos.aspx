<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregaProductos.aspx.cs" Inherits="Integra2.AgregaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <h1>
    <br />
    Agrega Productos</h1>
<p>
    &nbsp;</p>
        <table style="font-size: medium">
            <tr>
                <td style="width: 174px; height: 29px;">Nombre producto:</td>
                <td style="height: 29px">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38" Width="161px"></asp:TextBox>
                </td>
                <td style="width: 308px; height: 29px;">&nbsp;&nbsp; 
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Marca:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" tyle="margin-left: 38" Width="161px"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 174px">Precio Unitario:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" tyle="margin-left: 38" Width="161px">00,00</asp:TextBox>
                </td>
                <td style="width: 308px">
                     <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Fecha Vencimiento:</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" style="font-size: small" Width="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" SelectionMode="DayWeekMonth" SelectedDate="02/25/2021 12:01:48">
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
                    <br />
                </td>
            </tr>
             <tr>
                <td style="width: 174px">Proveedor:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" tyle="margin-left: 38" Width="161px"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                 </td>
            </tr>
            <tr>
                <td style="width: 174px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
            
         
                <tr>
                <td style="width: 174px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server"  Text="Grabar" OnClick="Button1_Click" />
                </td>
                <td style="width: 308px">
                    <asp:Button ID="Button2" runat="server"  Text="Volver" OnClick="Button2_Click" />
                    <br />
                </td>
            </tr>
        </table>
    <p>

    </p>
</asp:Content>
