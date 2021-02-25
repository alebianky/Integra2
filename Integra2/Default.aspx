<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Integra2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 style="font-size: x-large; text-align: left">Ventas</h1>
        <p class="lead">
            <asp:Button ID="Button1" runat="server" Text="Nueva Venta" style="background-color:blue; margin-left: 11px;" Font-Underline="False" ForeColor="White" OnClick="Button1_Click"/>
        </p>
         <p class="lead">
            <asp:Button ID="Button5" runat="server" Text="Listado de Ventas" style="background-color:blue; " Font-Underline="False" ForeColor="White" OnClick="Button5_Click"/>
        </p>
    </div>

     <div class="row">
        <div class="col-md-4">
            <h2>Productos</h2>
            <p>
                Para Agregar y Listar Productos
            </p>
            <p>
                
            <asp:Button ID="Button2" runat="server" Text="Productos" style="background-color:blue; " Font-Underline="False" ForeColor="White" OnClick="Button2_Click"/>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2>Clientes</h2>
            <p>
                Para Agregar y Listar Clientes</p>
            <p>
               
            <asp:Button ID="Button3" runat="server" Text="Clientes" style="background-color:blue; " Font-Underline="False" ForeColor="White" OnClick="Button3_Click"/>
               
            </p>
        </div>
        <div class="col-md-4">
            <h2>Empleados</h2>
            <p>
                Para Agregar o Listar Empleados </p>
            <p>
               
            <asp:Button ID="Button4" runat="server" Text="Empleados" style="background-color:blue; " Font-Underline="False" ForeColor="White" OnClick="Button4_Click"/>
               
            </p>
        </div>
    </div>

</asp:Content>
