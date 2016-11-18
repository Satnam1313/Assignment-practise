using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Recipes : System.Web.UI.Page
{
    private readonly SqlConnection connection =
        new SqlConnection(
            "Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;MultipleActiveResultSets=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        connection.Open();
        var query = "Select * from AddRecipe where Limits=@Private";
        var command = new SqlCommand(query, connection);
        command.Parameters.AddWithValue("@Private", "Public");
        var reader = command.ExecuteReader();

        if (reader.HasRows)
        {
            var i = 0;
            while (reader.Read())
            {

                //int count =(int)command2.ExecuteScalar();
                //for (int j = 0; j<count ; j++)
                //{
                var image = "Select RecipeImage from AddRecipe where  Limits=@Private ";
                var imagedata = new SqlCommand(image, connection);
                
                imagedata.Parameters.AddWithValue("@Private", "Public");



                var bytes = (byte[])imagedata.ExecuteScalar();
                var strBase64 = Convert.ToBase64String(bytes);
                var imageUrl = "data:Image;base64," + strBase64;

                var createDiv =new HtmlGenericControl("DIV");

                createDiv.Attributes["class"] = "col-md-3 col-sm-4 col-xs-12";

                createDiv.InnerHtml = "<div class='thumbnail'><img src=" + imageUrl + " alt='Mountain View' style='width: 100px; height: 100px; '> <div class='caption'> <h2>" + reader["RecipeName"] + "</h2></div>" + "<p>" + reader["RecipeDescription"] + "</p>" + "<a id='moreinfo' useCapture='true' class='btn btn-info' href='moreInfo.aspx''>More Info</a></div>";
                createDiv.ID = "createDiv" + i;
                //"<button class='btn btn-info' onclick=''>More Info</button>"
                hello.Controls.Add(createDiv);
                i++;
                //}
                //break;

            }

        }
        connection.Close();
    }
}