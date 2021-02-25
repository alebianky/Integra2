using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class AgregaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {






            if (TextBox1.Text.ToString().Equals("") || TextBox2.Text.ToString().Equals("") || TextBox3.Text.ToString().Equals("") || TextBox4.Text.ToString().Equals(""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Faltan Completar Datos en Formulario !')", true);
            }
            else
            {
                String precio = TextBox3.Text.ToString();
                string precio2 = precio.Replace(".", ",");

                // ESCRIBIR en Base de DAtos

                string strCon = ConfigurationManager.ConnectionStrings["integraConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(strCon))
                {

                    SqlCommand command2 = new SqlCommand("Agrega_Producto", conn);

                    command2.CommandType = CommandType.StoredProcedure;
                    command2.Parameters.AddWithValue("@nombre", TextBox1.Text.ToString());
                    command2.Parameters.AddWithValue("@marca", TextBox2.Text.ToString());
                    // command2.Parameters.AddWithValue("@precio", float.Parse(TextBox3.Text.ToString()));
                    command2.Parameters.AddWithValue("@precio", float.Parse(precio2));
                    command2.Parameters.AddWithValue("@fecha_vencimiento", Calendar1.SelectedDate);

                    command2.Parameters.AddWithValue("@proveedor", TextBox4.Text.ToString());

                    conn.Open();


                    try
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Producto Cargado!')", true);
                        SqlDataReader dr = command2.ExecuteReader();

                    }
                    catch (SqlException oError)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error en BD !!!')" + oError, true);
                    }


                    conn.Close();

                }

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProductos.aspx");
        }
    }
}