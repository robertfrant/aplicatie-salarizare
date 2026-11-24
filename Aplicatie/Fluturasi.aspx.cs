using CrystalDecisions.CrystalReports.Engine;
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
    public partial class WebForm6 : System.Web.UI.Page
    {

        OracleConnection cn;
        OracleDataAdapter da;
        DataSet ds;
        String strSQL;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenereaza_Click(object sender, EventArgs e)
        {
            try
            {
                OracleConnection cn = new OracleConnection("Data Source=xe;User ID=student;Password=student");

                OracleCommand cmd = new OracleCommand("SELECT * FROM ANGAJATI ORDER BY NR_CRT", cn);

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "ANGAJATI");

                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("~/Fluturasi.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["ANGAJATI"]);
                CrystalReportViewer1.ReportSource = raport;
            }
            catch (Exception ex) 
            { 
                Label3.Text = "Eroare conectare baza de date..." + ex.ToString(); 
            }
        }

        protected void btnCautare_Click(object sender, EventArgs e)
        {
            try
            {
                OracleConnection cn = new OracleConnection("Data Source=xe;User ID=student;Password=student");

                OracleCommand cmd = new OracleCommand("SELECT * FROM ANGAJATI WHERE NUME = :NUME AND PRENUME = :PRENUME", cn);

                cmd.Parameters.Add(":NUME",txtNume.Text);
                cmd.Parameters.Add(":PRENUME", txtPrenume.Text);

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "ANGAJATI");

                if (ds.Tables["ANGAJATI"].Rows.Count == 0)
                {
                    Label3.Text = "Nu s-a gasit angajatul";
                    return;
                }
                else { Label3.Text = ""; }

                    ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("~/Fluturasi.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["ANGAJATI"]);
                CrystalReportViewer1.ReportSource = raport;
            }
            catch (Exception ex)
            {
                Label3.Text = "Eroare conectare baza de date..." + ex.ToString();
            }
        }
    }
}