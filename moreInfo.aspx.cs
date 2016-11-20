using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class moreInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie recipeCookie = Request.Cookies["RecipeInfo"];
        if (recipeCookie != null)
        {
            yes.Text = recipeCookie["RecipeName"];
        }
    }
}