<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevaVenta1.aspx.cs" Inherits="Integra2.NuevaVenta1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>
        <br />
&nbsp;&nbsp;&nbsp; Venta&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: large">Vendedor:</span>&nbsp;
        <asp:Label ID="Label1" runat="server" style="font-size: large" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: large">Cliente:</span>
        <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: medium">Numero-ProForma:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </span>
    </h2>
    <hr />
    <p>
        &nbsp;&nbsp; Producto: &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Buscar" />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp; cantidad:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number">0</asp:TextBox>
&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Productos" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5" Width="978px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
    <hr />
        <p>
            <asp:SqlDataSource ID="Productos" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [id],[nombre], [marca], [precio], [proveedor] FROM [producto] WHERE ([nombre] LIKE '%' + @nombre + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="%" Name="nombre" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </p>
    <p style="font-size: large">
        &nbsp;&nbsp;&nbsp;&nbsp; Pro - Forma</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="proforma" CellPadding="4" ForeColor="#333333" GridLines="None" Height="146px"  PageSize="20" ShowFooter="True" style="margin-left: 50px" Width="950px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:BoundField DataField="nombre_prod" HeaderText="Articulo" SortExpression="nombre_prod" />
                <asp:BoundField DataField="marca_prod" HeaderText="marca" SortExpression="marca_prod" />
                <asp:BoundField DataField="precio_prod" HeaderText="precio_Unitario" SortExpression="precio_prod" />
                <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
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
    </p>
<p>
        <span style="font-size: x-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total:</span>
        <asp:TextBox ID="TextBox3" runat="server" style="font-size: large"></asp:TextBox>
    </p>
<p>
        <asp:Button ID="Button2" runat="server" style="font-size: large; margin-left: 443px" Text="Generar Factura" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Cancelar" />
    </p>
<p>
        <asp:SqlDataSource ID="proforma" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [cantidad], [nombre_prod], [marca_prod], [precio_prod], [subtotal] FROM [factura] WHERE ([id_factura] = @id_factura)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="id_factura" PropertyName="Text" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
