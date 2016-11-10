using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
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
    
        
        ArrayList companylist = new ArrayList();

        var query = "Select count(*) from SignIn where UserName= "+"'UserNameBox.Text'";

        SqlCommand cmd = new SqlCommand(query, connection);
       int i= cmd.ExecuteNonQuery();

        if (i==0)
            {
                var command = new SqlCommand("SigningIn", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@UserName", UserNameBox.Text);
            command.Parameters.AddWithValue("@Password", PasswordBox.Text);
            command.ExecuteNonQuery();
            connection.Close();
            }
            else
            {
                UserExists.Text = "User Already Exists";
            }
        }
    }