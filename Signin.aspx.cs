﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signin : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void SignIn_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("AfterSignIn.aspx");
    }
}