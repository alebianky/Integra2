using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class Print2 : System.Web.UI.Page
    {
        string ClienteDNI;
        string ClienteApellido;
        string ClienteNombre;
        string IDCliente;
        string id_factura;
        string total;

        string EmpleadoLegajo;
        string EmpleadoApellido;
        string EmpleadoNombre;
        DateTime fecha_Factura;
        protected void Page_Load(object sender, EventArgs e)
        {
            ClienteDNI = Session["DNI"].ToString();
            ClienteApellido = Session["Apellido"].ToString();
            ClienteNombre = Session["Nombre"].ToString();
            IDCliente = Session["IDCliente"].ToString();
            fecha_Factura = (DateTime)Session["fecha_factura"];
            id_factura = Session["id_factura"].ToString();
            total = Session["total"].ToString();

            EmpleadoLegajo = Session["EmpleadoLegajo"].ToString();
            EmpleadoApellido = Session["EmpleadoApellido"].ToString();
            EmpleadoNombre = Session["EmpleadoNombre"].ToString();

            Label1.Text = ClienteNombre + ' ' + ClienteApellido;
            Label2.Text = EmpleadoNombre + ' ' + EmpleadoApellido + "-- Legajo: " + EmpleadoLegajo;
            Label3.Text = fecha_Factura.ToString();
            Label4.Text = id_factura;
            Label5.Text = total;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerFacturas.aspx");
        }
    }
}