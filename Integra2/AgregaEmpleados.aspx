<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregaEmpleados.aspx.cs" Inherits="Integra2.AgregaEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
<h1>
        Agregar Empleado</h1>
<p>
        &nbsp;</p>
<p>
        <br />
        <table style="font-size: medium">
            <tr>
                <td style="width: 174px; height: 29px;">Nombre:</td>
                <td style="height: 29px; width: 388px;">
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38" Width="161px"></asp:TextBox>
                </td>
                <td style="width: 308px; height: 29px;">
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Apellido</td>
                <td style="width: 388px">
                    <asp:TextBox ID="TextBox2" runat="server" tyle="margin-left: 38" Width="161px"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 174px">DNI:</td>
                <td style="width: 388px">
                    <asp:TextBox ID="TextBox3" runat="server" tyle="margin-left: 38" Width="161px" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 174px">Fecha Nacimiento:</td>
                <td style="width: 388px">
                    <asp:Calendar ID="Calendar1" runat="server" Height="190px" style="font-size: small" Width="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" SelectionMode="DayWeekMonth" SelectedDate="02/24/2021 15:57:41">
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
                <td style="width: 388px">
                    &nbsp;</td>
                <td style="width: 308px">
                    <br />
                    <br />
                 </td>
            </tr>
            <tr>
                <td style="width: 174px">Numero Legajo:</td>
                <td style="width: 388px">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td style="width: 308px">
                    <br />
                    <br />
                </td>
            </tr>
            
         
                <tr>
                <td style="width: 174px">&nbsp;</td>
                <td style="width: 388px">
                    <asp:Button ID="Button1" runat="server" Text="Grabar" OnClick="Button1_Click" />
                </td>
                <td style="width: 308px">
                    <asp:Button ID="Button2" runat="server"  Text="Volver" OnClick="Button2_Click" />
                    <br />
                </td>
            </tr>
        </table>
    </p>
    <p>

    </p>
</asp:Content>
