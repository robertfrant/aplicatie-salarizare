using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicatie
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        OracleConnection cn;
        OracleDataAdapter da;
        DataSet ds;
        String strSQL;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Focus();

                try { 
                OracleConnection cn = new OracleConnection("Data Source=xe;User ID=student;Password=student");

                OracleCommand cmd = new OracleCommand("SELECT * FROM ANGAJATI", cn);

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "ANGAJATI");

                Session["StatPlataDS"] = ds;

                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("~/CrystalReport1.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["ANGAJATI"]);
                CrystalReportViewer1.ReportSource = raport;

                Label4.Visible = true;
                txtInfo.Visible = true;
                btnPrint.Visible = true;

                }catch(Exception ex) { }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                OracleConnection cn = new OracleConnection("Data Source=xe;User ID=student;Password=student");

                OracleCommand cmd = new OracleCommand("SELECT * FROM ANGAJATI WHERE NR_CRT > :NR_CRT", cn);

                cmd.Parameters.AddWithValue(":NR_CRT", Convert.ToInt32(TextBox1.Text));

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "ANGAJATI");

                Session["StatPlataDS"] = ds;


                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("~/CrystalReport1.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["ANGAJATI"]);
                CrystalReportViewer1.ReportSource = raport;

            }
            catch (Exception ex)
            {
                Label3.Text = "Eroare conectare baza de date..." + ex.ToString();
            }

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {

            if (Session["StatPlataDS"] == null)
            {
                Label4.Text = "Generați mai întâi statul de plată!";
                return;
            }

            DataSet ds = (DataSet)Session["StatPlataDS"];

            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("~/CrystalReport1.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["ANGAJATI"]);

            

            DateTime azi = DateTime.Now;
            string an = azi.Year.ToString();
            string luna = azi.Month.ToString("00");

            
            string info = txtInfo.Text.Trim();
            if (info == "") info = "General";

            info = info.Replace(" ", "_");

            string numeFisier =$"StatPlata_{luna}_{an}_{info}.pdf";

            DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
            raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
            raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
            fisier.DiskFileName = Server.MapPath("~/PDF/" + numeFisier);
            raport.ExportOptions.DestinationOptions = fisier;
            raport.Export();

            Label4.Text = "PDF salvat automat: /PDF/" + numeFisier;
            CrystalReportViewer1.ReportSource = raport;
        }
    }
}