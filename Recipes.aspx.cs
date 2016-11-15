using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recipes : System.Web.UI.Page
{
    private readonly SqlConnection connection =
        new SqlConnection(
            "Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;MultipleActiveResultSets=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        var command =
            new SqlCommand("SELECT COUNT(*) FROM AddRecipe", connection);
        connection.Open();
        int count = (int) command.ExecuteScalar();
        for (int i = 0; i < count ; i++)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl createDiv =
                new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            createDiv.Attributes["class"] = "btn btn-success";
            createDiv.ID = "createDiv"+i;
            createDiv.Style.Add(HtmlTextWriterStyle.Color, "Red");
            createDiv.Style.Add(HtmlTextWriterStyle.Height, "100px");
            createDiv.Style.Add(HtmlTextWriterStyle.Width, "400px");
            
            createDiv.InnerHtml = " I'm a div, from code behind ";  
            plcHolder.Controls.Add(createDiv);
            
        }
    }
}