using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicatie
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCauta_Click(object sender, EventArgs e)
        {
            dvAngajat.Visible = true;
            dvAngajat.DataBind();

            if (dvAngajat.Rows.Count == 0)
            {
                dvAngajat.Visible = false;
                lblMesaj.Text = "Angajatul nu a fost găsit.";
            }
            else
            {
                lblMesaj.Text = "";
            }
        }
    }
}