<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevaVenta.aspx.cs" Inherits="Integra2.NuevaVenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>
        <br />
        Venta</h1>
    <hr />
    <p>
        &nbsp;&nbsp;</p>
        <table style="font-size: medium">
            <tr>
                <td style="width: 256px; height: 29px;">&nbsp;&nbsp; Seleccione&nbsp; Vendedor: &nbsp;</td>
                <td style="height: 29px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="apellido" DataValueField="legajo" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 535px; height: 29px;">&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Nombre: " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="  , Legajo: " Visible="False"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 256px">&nbsp;&nbsp;<br />
                </td>
                <td>
                    <br />
                </td>
                <td style="width: 535px">
                    <br />
                </td> 
            </tr>

                <tr>
                <td style="width: 256px; font-size: large; background-color: #FFFFFF;">
                    &nbsp;&nbsp; Seleccione Cliente:</td>
                <td style="background-color: #FFFFFF">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                <td style="width: 535px; background-color: #FFFFFF;">
                    <asp:Button ID="Button3" runat="server" Text="Buscar" />
                    <br />
                </td>
            </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Clientes" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="font-size: large; margin-left: 0px" Width="1180px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <p>
         &nbsp;</p>
    <p>
         <asp:Button ID="Button2" runat="server"  Text="Volver" OnClick="Button2_Click" style="margin-left: 662px" />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [legajo], [nombre], [apellido], [dni] FROM [empleado]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="Clientes" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [nombre], [apellido], [dni], [id] FROM [cliente] WHERE (([apellido] LIKE '%' + @apellido + '%') OR([nombre] LIKE '%' + @nombre + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="apellido" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="nombre" PropertyName="Text" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [legajo], [nombre], [apellido], [dni] FROM [empleado]"></asp:SqlDataSource>
                   
    <br />
</asp:Content>
