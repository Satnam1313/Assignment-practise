using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterSingin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"]!=null)
        {
        drop.Text = Session["userName"].ToString(); 
        }
        else
        {
            drop.Text = "";
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.Remove("userName");
        Session.RemoveAll();
        Response.RedirectPermanent("Signin.aspx");
    }
}
