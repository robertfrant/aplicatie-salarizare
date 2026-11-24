using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicatie
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCauta_Click(object sender, EventArgs e)
        {
            gvAngajati.Visible = true;
            gvAngajati.SelectedIndex = -1;
            btnStergere.Visible = false;
            gvAngajati.DataBind();

            if (gvAngajati.Rows.Count == 0)
            {
                lblMesaj.Text = "Nu a fost găsit niciun angajat.";
                gvAngajati.Visible = false;
            }else
            {
                lblMesaj.Text = "";
            }
        }

        protected void gvAngajati_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnStergere.Visible = true;
        }

        protected void btnStergere_Click(object sender, EventArgs e)
        {
            SqlDataSource1.DeleteParameters["NR_CRT"].DefaultValue =
        gvAngajati.SelectedDataKey.Value.ToString();

            SqlDataSource1.Delete();
            gvAngajati.DataBind();
            btnStergere.Visible = false;
            gvAngajati.Visible = false;
        }
    }
}