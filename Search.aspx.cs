using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    private readonly SqlConnection connection =
        new SqlConnection(
            "Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        string checkBox;
        connection.Open();
        string query = "Select * from AddRecipe where RecipeName=@RecipeName and Limits=@Private and Cuisine=@Cuisine";
        SqlCommand command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@RecipeName",RecipeBox.Text);
        if (Private.Checked)
            checkBox = "Private";
        else
            checkBox = "Public";
        command.Parameters.AddWithValue("@Private", checkBox);

        command.Parameters.AddWithValue("@Cuisine", CuisineList.Text);
        SqlDataReader reader = command.ExecuteReader();
        if (reader.HasRows)
        {
            int i =0;
            while (reader.Read())
            {
                 

               
                    System.Web.UI.HtmlControls.HtmlGenericControl createDiv =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
                    createDiv.Attributes["class"] = "btn btn-success";
                    createDiv.ID = "createDiv" + i;
                    createDiv.Style.Add(HtmlTextWriterStyle.Color, "Red");
                    createDiv.Style.Add(HtmlTextWriterStyle.Height, "100px");
                    createDiv.Style.Add(HtmlTextWriterStyle.Width, "400px");

                    createDiv.InnerHtml = " I'm a div, from code behind ";
                    plcHolder.Controls.Add(createDiv);
                    createDiv.InnerHtml += reader["RecipeName"];
                i++;
            }
            
        }
        connection.Close();
    }


}