using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace viajes_otros_componentes
{
    public partial class Frmviajes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Lblciudad.Text = "700000";
                Lblhotel.Text = "500000";
                Txtcantidad.Text = "0";
                Lblguia.Text = "0";
                Lblautomovil.Text = "0";
                
            }
        }

        protected void Calcular_total()
        {
            int ciudad, hotel, cantidad, guia, automovil,total;
            ciudad = Convert.ToInt32(Lblciudad.Text);
            hotel = Convert.ToInt32(Lblhotel.Text);
            guia = Convert.ToInt32(Lblguia.Text);
            automovil = Convert.ToInt32(Lblautomovil.Text);
            cantidad = Convert.ToInt32(Txtcantidad.Text);
            

            if (cantidad == 0)

                Txtcantidad.Text = "Ingresar cantidad de personas";
            else
            {
                Lblmensaje.Text = "";
                total = (ciudad + hotel) * cantidad + guia + automovil;
                Lbltotal.Text = "" + total;
            }
                

         }

        protected void Ddlciudad_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (Ddlciudad.SelectedIndex)
            {
                case 0:Lblciudad.Text = "600000";
                    break;
                case 1:
                    Lblciudad.Text = "700000";
                    break;
                case 2:
                    Lblciudad.Text = "1500000";
                    break;
                case 3:
                    Lblciudad.Text = "2000000";
                    break;
            }
            Calcular_total();
        }

        protected void Rblhotel_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (Rblhotel.SelectedIndex)
            {
                case 0:
                    Lblhotel.Text = "500000";
                    break;
                case 1:
                    Lblhotel.Text = "800000";
                    break;
                case 2:
                    Lblhotel.Text = "600000";
                    break;
            }
            Calcular_total();
        }

        protected void Cbguia_CheckedChanged(object sender, EventArgs e)
        {
            if (Cbguia.Checked)
                Lblguia.Text = "200000";
            else
                Lblguia.Text = "0";
            Calcular_total();
        }
        

        protected void Cbautomovil_CheckedChanged(object sender, EventArgs e)
        {
            if (Cbautomovil.Checked)
                Lblautomovil.Text = "400000";
            else
                Lblautomovil.Text = "0";
            Calcular_total();

        }

        protected void Btncalcular_Click(object sender, EventArgs e)
        {
            Calcular_total();
        }
    }
}