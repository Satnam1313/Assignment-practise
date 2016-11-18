using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Signup : Page
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
            new SqlCommand("SELECT COUNT(*) FROM Signin WHERE UserName = @UserName", connection);
        command.Parameters.AddWithValue("@UserName", UserNameBox.Text.Trim());
        userNameExists = (int) command.ExecuteScalar() > 0;

        
        
        if (userNameExists)
        {
            UserExists.Text = "User Already Exists";
        }
        else
        {
            command = new SqlCommand("SignUpPro", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@UserName", UserNameBox.Text);
            command.Parameters.AddWithValue("@Password", PasswordBox.Text);
            command.Parameters.AddWithValue("@UserEmail", EmailBox.Text);
            command.Parameters.AddWithValue("@UserAddress", AddressBox.Text);
            command.ExecuteNonQuery();
            connection.Close();
            Session["userName"] = UserNameBox.Text;
            Response.RedirectPermanent("AfterSignIn.aspx");
        }
    }
}
