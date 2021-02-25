<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuevaVenta2.aspx.cs" Inherits="Integra2.NuevaVenta2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1>

   &nbsp;Factura</h1>
        <table style="font-size: medium; width: 964px;" align="center">
             <tr>
                <td style="width: 114px">
                    &nbsp;&nbsp;&nbsp; </td>
                <td class="modal-sm" style="width: 400px">
                    &nbsp;</td>
                <td style="width: 172px">
                    <br />
                </td>
                    <td style="width: 308px">
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 114px; height: 11px;">&nbsp;&nbsp; Cliente:&nbsp; &nbsp;</td>
                <td style="height: 11px; width: 400px;">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="width: 172px; height: 11px;">&nbsp;&nbsp; 
                    Fecha Factura: 
                    <br />
                </td>
                <td style="width: 308px; height: 11px;">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                </td> 
            </tr>
            <tr>
                <td style="width: 114px; height: 9px;">&nbsp;&nbsp; Vendedor:</td>
                <td class="modal-sm" style="width: 400px; height: 9px;">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="width: 172px; height: 9px;">
                    &nbsp; Numero Factura:<br />
                </td> 
                <td style="width: 308px; height: 9px;">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td> 
            </tr>
           
            
         
                <tr>
                <td style="width: 114px">
                    &nbsp;&nbsp;&nbsp; </td>
                <td class="modal-sm" style="width: 400px">
                    &nbsp;</td>
                <td style="width: 172px">
                    <br />
                </td>
                    <td style="width: 308px">
                    <br />
                </td> 
            </tr>
        </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Factura" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 148px; font-size: 16px; text-align: right;" Width="913px">
        <Columns>
            <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
            <asp:BoundField DataField="articulo" HeaderText="articulo" SortExpression="articulo" />
            <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
            <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="Factura" runat="server" ConnectionString="<%$ ConnectionStrings:integraConnectionString %>" SelectCommand="SELECT [cantidad],[id_producto] as codigo, [nombre_prod] as articulo, [marca_prod] as marca, [precio_prod] as precio, [subtotal] FROM [factura] WHERE ([id_factura] = @id_factura)">
        <SelectParameters>
            <asp:SessionParameter Name="id_factura" SessionField="id_factura" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span style="font-size: large">TOTAL: </span>
        <asp:Label ID="Label5" runat="server" style="font-size: large" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Imprimir" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Facturas" />

    </p>
    <p>
    <br />
    <br />
    <br />
    <br />
    </p>
</asp:Content>
