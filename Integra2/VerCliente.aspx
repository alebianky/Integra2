<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerCliente.aspx.cs" Inherits="Integra2.VerCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </h3>
<hr style="margin-top: 0px" />
<h1>Listado de Clientes</h1>
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Buscar</h3>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cliente:&nbsp;
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Buscar" />
    <asp:Button ID="Button4" runat="server" style="margin-left:44px; margin-top: 19px;" Text="Agregar Cliente" OnClick="Button4_Click" Width="252px" TabIndex="1" />
</p>
<hr style="margin-top: 0px" />
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 22px" Width="1105px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
            <asp:BoundField DataField="fecha_nacimiento" HeaderText="fecha_nacimiento" SortExpression="fecha_nacimiento" />
            <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
            <asp:BoundField DataField="tipo_tarjeta" HeaderText="tipo_tarjeta" SortExpression="tipo_tarjeta" />
            <asp:BoundField DataField="numero_tarjeta" HeaderText="numero_tarjeta" SortExpression="numero_tarjeta" />
            <asp:BoundField DataField="vencimiento_Tarjeta" HeaderText="vencimiento_Tarjeta" SortExpression="vencimiento_Tarjeta" />
            <asp:BoundField DataField="cod_seguridad_tarjeta" HeaderText="cod_seguridad_tarjeta" SortExpression="cod_seguridad_tarjeta" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [nombre], [apellido], [dni], [fecha_nacimiento], [edad], [tipo_tarjeta], [numero_tarjeta], [vencimiento_Tarjeta],[cod_seguridad_tarjeta] FROM [cliente] WHERE ([apellido] LIKE '%' + @apellido + '%')  OR ([nombre] LIKE '%' + @nombre + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox8" DefaultValue="%" Name="apellido" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" DefaultValue="%" Name="nombre" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Volver" />

    </p>
</p>
</asp:Content>
