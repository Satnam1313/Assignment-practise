using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Submit_Click(object sender, EventArgs e)
    {
        string CheckBox;
        connection.Open();
        SqlCommand command = new SqlCommand("AddingRecipe", connection)
        {
            CommandType = CommandType.StoredProcedure
        };
        command.Parameters.AddWithValue("@RecipeName", Recipebox.Text);
        command.Parameters.AddWithValue("@SubmittedBy", SubmittedBox.Text);
        command.Parameters.AddWithValue("@Category", CategoryList.Text);
        command.Parameters.AddWithValue("@CookingTime", CookingTimeBox.Text);
        command.Parameters.AddWithValue("@Cuisine", CuisineList.Text);
        if (Private.Checked==true)
        {
            CheckBox = "Private";
        }
        else
        {
            CheckBox = "Public";
        }
        command.Parameters.AddWithValue("@Limits", CheckBox);
        command.Parameters.AddWithValue("@RecipeDescription", RecipeStep.Text);
        command.Parameters.AddWithValue("@RecipeSteps", Steps.Text);
       
        command.ExecuteNonQuery();
        connection.Close();
    }
}