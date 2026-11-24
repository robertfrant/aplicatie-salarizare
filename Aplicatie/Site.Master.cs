using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicatie
{
    public partial class SiteMaster : MasterPage
    {
        static int contorReclame = 0;
        static Random rnd = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.ToString();
            imgReclama1.ImageUrl = "~/Images/1.jpg";
            imgReclama2.ImageUrl = "~/Images/2.jpg";
            
        }

        protected void Reclame_Tick(object sender, EventArgs e)
        {
            contorReclame++;

            if (contorReclame < 5)
                return;

            contorReclame = -1;

            string[] imagini =
            {
        "~/Images/1.jpg",
        "~/Images/2.jpg",
        "~/Images/3.jpg",
        "~/Images/4.jpeg",
        "~/Images/5.jpeg"
    };

            Random rnd = new Random();

            int i1 = rnd.Next(imagini.Length);
            int i2;
            do
            {
                i2 = rnd.Next(imagini.Length);
            } while (i2 == i1);

            imgReclama1.ImageUrl = imagini[i1];
            imgReclama2.ImageUrl = imagini[i2];
            
        }

    }
}