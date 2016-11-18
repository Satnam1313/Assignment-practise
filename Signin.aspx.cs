using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signin : System.Web.UI.Page
{
    private readonly SqlConnection connection =
        new SqlConnection(
            "Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;MultipleActiveResultSets=true");

    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void SignIn_Click(object sender, EventArgs e)
    {
        connection.Open();
        bool userNameExists = false;

        var command =
            new SqlCommand("SELECT COUNT(*) FROM SignUpTb WHERE UserName = @UserName and UserPassword=@Password", connection);
        command.Parameters.AddWithValue("@UserName", UserNameBox.Text.Trim());
        command.Parameters.AddWithValue("@Password", PasswordBox.Text.Trim());
        userNameExists = (int)command.ExecuteScalar() > 0;



        if (userNameExists) {
            var command1 =
           new SqlCommand("insert into SignIn(userName,userPassword)values (@UserName,@Password)", connection);
            
            command1.Parameters.AddWithValue("@UserName", UserNameBox.Text);
            command1.Parameters.AddWithValue("@Password", PasswordBox.Text);
            command1.ExecuteNonQuery();
            Session["userName"] = UserNameBox.Text;
            Response.RedirectPermanent("AfterSignIn.aspx");
            connection.Close();
        }
        else
        {
            UserNameBox.Text = "User doesn't Exists";
            UserNameBox.ForeColor=Color.Red;
        }
        
    }
}