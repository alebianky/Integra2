using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class NuevaVenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.ToString() == "-" || DropDownList1.SelectedItem.ToString() is null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Debe Seleccionar un Vendedor!')", true);
            }
            else
            {
                string DNI = GridView1.SelectedRow.Cells[3].Text.ToString();
                string IDCliente = GridView1.SelectedRow.Cells[4].Text.ToString();

                string Apellido = GridView1.SelectedRow.Cells[2].Text.ToString();

                string Nombre = GridView1.SelectedRow.Cells[1].Text.ToString();

                string EmpleadoLegajo = DropDownList1.SelectedValue.ToString();
                string EmpleadoApellido = DropDownList1.SelectedItem.ToString();
                string EmpleadoNombre = Label1.Text.ToString();

                Session["DNI"] = DNI;
                Session["Apellido"] = Apellido;
                Session["Nombre"] = Nombre;
                Session["IDCliente"] = IDCliente;

                Session["EmpleadoLegajo"] = EmpleadoLegajo;
                Session["EmpleadoApellido"] = EmpleadoApellido;
                Session["EmpleadoNombre"] = EmpleadoNombre;


                this.Response.Redirect("~/NuevaVenta1.aspx");
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strCon = ConfigurationManager.ConnectionStrings["integraConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(strCon))
            {


                conn.Open();

                SqlCommand cmd = new SqlCommand("select top 1 nombre  from dbo.empleado where legajo = " + int.Parse(DropDownList1.SelectedValue.ToString()) + "", conn);


                SqlDataReader dr2 = cmd.ExecuteReader();

                if (dr2.Read())
                {
                    Label3.Visible = true;
                    Label4.Visible = true;
                    Label1.Text = dr2["nombre"].ToString();
                    Label2.Text = DropDownList1.SelectedValue.ToString();
                }

                conn.Close();



            }




        }
    }
}