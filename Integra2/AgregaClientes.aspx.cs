using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Integra2
{
    public partial class AgregaClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

 
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.ToString().Equals("") || TextBox2.Text.ToString().Equals("") || TextBox3.Text.ToString().Equals("") || TextBox5.Text.ToString().Equals("") || TextBox6.Text.ToString().Equals("") || TextBox7.Text.ToString().Equals("") || TextBox8.Text.ToString().Equals(""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Faltan Completar Datos en Formulario !')", true);
            }
            else
            {
                string vencimiento = TextBox7.Text.ToString() + '/' + TextBox8.Text.ToString();

                // ESCRIBIR en Base de DAtos

                string strCon = ConfigurationManager.ConnectionStrings["integraConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(strCon))
                {

                    SqlCommand command2 = new SqlCommand("Agrega_Cliente", conn);

                    command2.CommandType = CommandType.StoredProcedure;
                    command2.Parameters.AddWithValue("@nombre", TextBox1.Text.ToString());
                    command2.Parameters.AddWithValue("@apellido", TextBox2.Text.ToString());
                    command2.Parameters.AddWithValue("@dni", int.Parse(TextBox3.Text.ToString()));
                    command2.Parameters.AddWithValue("@fecha_nac", Calendar1.SelectedDate);
                    command2.Parameters.AddWithValue("@tipo_tarj", DropDownList1.SelectedItem.ToString());
                    command2.Parameters.AddWithValue("@numero_tarj", TextBox5.Text.ToString());
                    command2.Parameters.AddWithValue("@venc_tarj", vencimiento);
                    command2.Parameters.AddWithValue("@cod_seg", TextBox6.Text.ToString());

                    conn.Open();


                    try
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cliente Cargado!')", true);
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
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "MM";
                TextBox8.Text = "AA";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerCliente.aspx");
        }
    
}
}