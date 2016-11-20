using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Recipes : Page
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
        var query3 = "Select RecipeNumbers from AddRecipe where RecipeName='Maggi Noodles' ";
        var command3 = new SqlCommand(query3, connection);
        var i = (int) command3.ExecuteScalar();
        var reader = command.ExecuteReader();
        if (reader.HasRows)
            while (reader.Read())
            {
                //int count =(int)command2.ExecuteScalar();
                //for (int j = 0; j<count ; j++)
                //{
                var image = "Select RecipeImage from AddRecipe where  Limits=@Private  and RecipeNumbers=" + i;
                var imagedata = new SqlCommand(image, connection);

                imagedata.Parameters.AddWithValue("@Private", "Public");
                var bytes = (byte[]) imagedata.ExecuteScalar();
                if ((byte[]) imagedata.ExecuteScalar() == null)
                {
                    //do nothing
                }
                else
                {
                    var strBase64 = Convert.ToBase64String(bytes);
                    var imageUrl = "data:Image;base64," + strBase64;
                    var createDiv = new HtmlGenericControl("DIV");
                    var moreInfoButton = new Button();
                    moreInfoButton.Text = "More Info";
                    
                    moreInfoButton.Attributes["class"] = "btn btn-info";
                    createDiv.Attributes["class"] = "col-md-4 col-sm-6 col-xs-12";
                    moreInfoButton.Click += moreInfo_Click;

                    createDiv.InnerHtml = "<div class='thumbnail ' runat='server'><img src=" + imageUrl +
                                          " alt='Recipe Image' class='img-responsive img-rounded img-thumbnail' style='height: 250px'> <div class='caption' > <h2 ID='RecipeName' runat='server'>" +
                                          reader["RecipeName"] + "</h2></div>" + "<p>" + reader["RecipeDescription"] +
                                          "</p>" + moreInfoButton + "</div>";
                    createDiv.ID = "createDiv" + i;
                   // this.Controls.Add(moreInfoButton);
                    hello.Controls.Add(createDiv);
                    i++;
                    //khushan if i am using the thing defined above it is not showing button instead it is showing me System.Web.UI.WebControls.Button on the screen

                    //and if i am using 
                    //<Button id='moreinfo' useCapture='true' class='btn btn-info' OnClick='moreInfo_Click' runat='server'>More Info</Button>
                    // it is not firing any event
                }

                //}
                //break;
            }
        else
            text.InnerHtml = "Sorry, Currently we don't have any Recipes";
        connection.Close();
    }

   

    private void moreInfo_Click(object sender, EventArgs e)
    {
        var recipeCookie = new HttpCookie("RecipeInfo");
        recipeCookie["RecipeName"] = "RecipeName.Text";
        Response.Cookies.Add(recipeCookie);
        Response.Redirect("moreInfo.aspx");
    }
}