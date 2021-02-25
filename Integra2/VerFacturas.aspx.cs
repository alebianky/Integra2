using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class VerFacturas : System.Web.UI.Page
    {
        DateTime fecha = new DateTime();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DNI"] = GridView1.SelectedRow.Cells[5].Text.ToString();
            Session["Apellido"] = GridView1.SelectedRow.Cells[3].Text.ToString();
            Session["Nombre"] = GridView1.SelectedRow.Cells[4].Text.ToString();
            Session["IDCliente"] = GridView1.SelectedRow.Cells[6].Text.ToString();

            fecha = Convert.ToDateTime(GridView1.SelectedRow.Cells[1].Text.ToString());
            Session["fecha_factura"] = fecha;

            Session["id_factura"] = GridView1.SelectedRow.Cells[2].Text.ToString();
            Session["total"] = GridView1.SelectedRow.Cells[10].Text.ToString();

            Session["EmpleadoLegajo"] = GridView1.SelectedRow.Cells[9].Text.ToString();
            Session["EmpleadoApellido"] = GridView1.SelectedRow.Cells[7].Text.ToString();
            Session["EmpleadoNombre"] = GridView1.SelectedRow.Cells[8].Text.ToString();

            Response.Redirect("NuevaVenta2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}