using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Historico
{
    public partial class Consultas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["TipoNomina"] == "Fijos")
                    {
                        lblTitulo.Text = "Histórico nómina Fijos";
                    }
                    else if (Request.QueryString["TipoNomina"] == "Pasaje")
                    {
                        lblTitulo.Text = "Histórico nómina Pasaje estudiantil";
                    }
                    else if (Request.QueryString["TipoNomina"] == "NuevoCirco")
                    {
                        lblTitulo.Text = "Histórico nómina Nuevo circo";
                    }
                    else if (Request.QueryString["TipoNomina"] == "AccionCentralizada")
                    {
                        lblTitulo.Text = "Histórico nómina Acción centralizada";
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

        }
        private void CargarHistorico()
        {
            
            DataSet ds = Consultas.ObtenerHistorico(CodigoTipoNomina(), txtCedula.Text, txtFecha1.Text, "");
            this.gridDetalle.DataSource = ds.Tables[0];
            this.gridDetalle.DataBind();

        }
        protected void gridDetalle_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void btnGuardaLista_Click(object sender, EventArgs e)
        {
            CargarHistorico();
        }
        private int CodigoTipoNomina()
        {
            int tipoNomina = 0;
            if (Request.QueryString["TipoNomina"] == "Fijos")
            {
                tipoNomina = 1;
            }
            else if (Request.QueryString["TipoNomina"] == "Pasaje")
            {
                tipoNomina = 2;
            }
            else if (Request.QueryString["TipoNomina"] == "NuevoCirco")
            {
                tipoNomina = 3;
            }
            else if (Request.QueryString["TipoNomina"] == "AccionCentralizada")
            {
                tipoNomina = 4;
            }
            return tipoNomina;
        }
    }
}