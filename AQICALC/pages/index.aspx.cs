using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AQICALC.pages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ldate.Text = DateTime.Today.ToString("dd-MMM-yyyy");
        }

        protected void baqi_Click(object sender, EventArgs e)
        {
            sio3.Text = "";
            sico.Text = "";
            sinh3.Text = "";
            sipm10.Text = "";
            sipm2_5.Text = "";
            siso2.Text = "";
            sinox.Text = "";

            int cnt = 0;
            if(tbpm10.Text=="" && tbpm2_5.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('both PM2.5 and PM10 cannot be null!!!!')</script>");
            }
            else
            {
                if (tbpm10.Text != "")
                    cnt++;
                if (tbpm2_5.Text != "")
                    cnt++;
                if (tbo3.Text != "")
                    cnt++;
                if (tbnh3.Text != "")
                    cnt++;
                if (tbco.Text != "")
                    cnt++;
                if(cnt>=3 && cnt <= 5)
                {
                    compund calc = new compund();
                    if (tbpm10.Text != "")
                        sipm10.Text = calc.Pm10(float.Parse(tbpm10.Text)).ToString(); 
                    if (tbpm2_5.Text != "")
                        sipm2_5.Text = calc.Pm2_5(float.Parse(tbpm2_5.Text)).ToString();
                    if (tbo3.Text != "")
                        sio3.Text = calc.O3(float.Parse(tbo3.Text)).ToString();
                    if (tbnh3.Text != "")
                        sinh3.Text = calc.Nh3(float.Parse(tbnh3.Text)).ToString();
                    if (tbco.Text != "")
                        sico.Text = calc.Co(float.Parse(tbco.Text)).ToString();
                    aqires.Text = calc.maxval().ToString();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Accept atleast 3 values!!')</script>");
                }
            }
        }
    }
}