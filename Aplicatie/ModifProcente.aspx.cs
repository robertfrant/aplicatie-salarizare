using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicatie
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModifica_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            try
            {
                OracleConnection cn = new OracleConnection("Data Source=xe;User ID=student;Password=student");
                OracleCommand cmd = new OracleCommand("UPDATE_PROCENTE", cn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("P_CAS",Convert.ToDecimal(txtCAS.Text.Replace(',', '.')));
                cmd.Parameters.Add("P_CASS",Convert.ToDecimal(txtCASS.Text.Replace(',', '.')));
                cmd.Parameters.Add("P_IMPOZIT",Convert.ToDecimal(txtImpozit.Text.Replace(',', '.')));
                cmd.Parameters.Add("P_PAROLA", txtParola.Text);

                cn.Open();
                cmd.ExecuteNonQuery();

                OracleCommand cmdRecalc = new OracleCommand("RECALCULEAZA_SALARII", cn);
                cmdRecalc.CommandType = CommandType.StoredProcedure;
                cmdRecalc.ExecuteNonQuery();

                cn.Close();

                lblMesaj.Text = "Procente modificate cu succes!";
                lblMesaj.ForeColor = System.Drawing.Color.Green;

            }
            catch (Exception ex) {
                lblMesaj.Text = ex.Message;
                lblMesaj.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}