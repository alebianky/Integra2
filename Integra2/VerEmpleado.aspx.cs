using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class VerEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            //Response.Redirect("AgregaEmpleados.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregaEmpleados.aspx");
        }
    }
}