using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProductos.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerCliente.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerEmpleado.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NuevaVenta.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerFacturas.aspx");
        }
    }
}