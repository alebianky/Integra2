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
    public partial class NuevaVenta1 : System.Web.UI.Page
    {
        long numfactura;
        string ClienteDNI;
        string ClienteApellido;
        string ClienteNombre;
        string IDCliente;

        string EmpleadoLegajo;
        string EmpleadoApellido;
        string EmpleadoNombre;
        double suma;

        string strCon = ConfigurationManager.ConnectionStrings["integraConnectionString"].ConnectionString;
        protected void Page_Init(object sender, EventArgs e)
        {
            Button2.Enabled = false;
            ClienteDNI = Session["DNI"].ToString();
            ClienteApellido = Session["Apellido"].ToString();
            ClienteNombre = Session["Nombre"].ToString();
            IDCliente = Session["IDCliente"].ToString();

            EmpleadoLegajo = Session["EmpleadoLegajo"].ToString();
            EmpleadoApellido = Session["EmpleadoApellido"].ToString();
            EmpleadoNombre = Session["EmpleadoNombre"].ToString();

            Label1.Text = EmpleadoApellido + ' ' + EmpleadoNombre + ' ' + EmpleadoLegajo;
            Label2.Text = ClienteDNI + ' ' + ClienteApellido + ' ' + ClienteNombre;


            Random rnd = new Random();
            int numeropro = rnd.Next(900, 9999);

            numfactura = int.Parse(ClienteDNI.Substring(0, 2).ToString() + EmpleadoLegajo.Substring(0, 2).ToString() + numeropro.ToString());
            Label3.Text = numfactura.ToString();



        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(TextBox2.Text == "0")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ingrese Cantidad de producto!')", true);
            }
            else
            {
                Button2.Enabled = true;
                string id_producto = GridView1.SelectedRow.Cells[1].Text.ToString();
                string nombreProducto = GridView1.SelectedRow.Cells[2].Text.ToString();
                string marcaProducto = GridView1.SelectedRow.Cells[3].Text.ToString();
                float precioProducto = float.Parse(GridView1.SelectedRow.Cells[4].Text.ToString());
                // ESCRIBIR en Base de DAtos



                using (SqlConnection conn = new SqlConnection(strCon))
                {

                    SqlCommand command2 = new SqlCommand("crear_proforma", conn);

                    command2.CommandType = CommandType.StoredProcedure;
                    command2.Parameters.AddWithValue("@id_factura", int.Parse(Label3.Text.ToString()));
                    command2.Parameters.AddWithValue("@nombre_prod", nombreProducto);
                    command2.Parameters.AddWithValue("@marca_prod", marcaProducto);
                    command2.Parameters.AddWithValue("@precio_prod", precioProducto);

                    command2.Parameters.AddWithValue("@cantidad", int.Parse(TextBox2.Text.ToString()));
                    command2.Parameters.AddWithValue("@id_cliente", IDCliente);
                    command2.Parameters.AddWithValue("@legajo_empleado", EmpleadoLegajo);
                    command2.Parameters.AddWithValue("@id_producto", id_producto);

                    conn.Open();


                    try
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('producto cargado!')", true);
                        SqlDataReader dr = command2.ExecuteReader();

                    }
                    catch (SqlException oError)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error en BD !!!')" + oError, true);
                    }



                    conn.Close();

                    GridView2.DataBind();

                    //double suma = GridView2.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDouble(x.Cells[5].Text));
                    // TextBox3.Text = suma.ToString();


                    conn.Open();

                    SqlCommand cmd = new SqlCommand("select SUM(subtotal) as suma from dbo.factura where id_factura = " + int.Parse(Label3.Text.ToString()) + "", conn);
                    SqlDataReader dr2 = cmd.ExecuteReader();

                    if (dr2.Read())
                    {
                        TextBox3.Text = dr2["suma"].ToString();
                    }

                    conn.Close();

                }
                // Response.Redirect("NuevaVenta2.aspx");
                TextBox1.Text = "";
                TextBox2.Text = "0";
            }

            
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime fecha = new DateTime();

            fecha = System.DateTime.Today;
            Session["fecha_factura"] = fecha;
            Session["id_factura"] = Label3.Text.ToString();
            Session["total"] = TextBox3.Text.ToString();


            using (SqlConnection conn = new SqlConnection(strCon))
            {

                SqlCommand command3 = new SqlCommand("Emite_Factura", conn);

                command3.CommandType = CommandType.StoredProcedure;
                command3.Parameters.AddWithValue("@id_factura", int.Parse(Label3.Text.ToString()));
                command3.Parameters.AddWithValue("@fecha_factura", fecha);
                command3.Parameters.AddWithValue("@id_cliente", IDCliente);


                conn.Open();


                try
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Factura Emitida!')", true);
                    SqlDataReader dr = command3.ExecuteReader();

                }
                catch (SqlException oError)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error en BD !!!')" + oError, true);
                }

                conn.Close();

            }



            Response.Redirect("NuevaVenta2.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("VerFacturas.aspx");
        }



    }
}