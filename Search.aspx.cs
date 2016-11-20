using System;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Search : Page
{
    private readonly SqlConnection connection =
        new SqlConnection(
            "Data Source=DESKTOP-B5SA0JC\\SATNAM;Initial Catalog=Comp229;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;MultipleActiveResultSets=True");

    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        string checkBox;
        connection.Open();
        var query = "Select * from AddRecipe where RecipeName=@RecipeName and Limits=@Private and Cuisine=@Cuisine";
        var check = "Select Count(*) from AddRecipe where RecipeName=@RecipeName and Limits=@Private and Cuisine=@Cuisine";
        var command = new SqlCommand(query, connection);
        var command2=new SqlCommand(check,connection);
        command2.Parameters.AddWithValue("@RecipeName", RecipeBox.Text);
        if (Private.Checked)
            checkBox = "Private";
        else
            checkBox = "Public";
        command2.Parameters.AddWithValue("@Private", checkBox);

        command2.Parameters.AddWithValue("@Cuisine", CuisineList.Text);
        command.Parameters.AddWithValue("@RecipeName", RecipeBox.Text);
      
        command.Parameters.AddWithValue("@Private", checkBox);

        command.Parameters.AddWithValue("@Cuisine", CuisineList.Text);
        var reader = command.ExecuteReader();
        
        if (reader.HasRows)
        {
            var i = 0;
            while (reader.Read())
            {

                //int count =(int)command2.ExecuteScalar();
                //for (int j = 0; j<count ; j++)
                //{
                var image = "Select RecipeImage from AddRecipe where RecipeName=@RecipeName and Limits=@Private and Cuisine=@Cuisine and RecipeNumbers=RecipeNumbers";
                var imagedata = new SqlCommand(image, connection);
                imagedata.Parameters.AddWithValue("@RecipeName", RecipeBox.Text);
                if (Private.Checked)
                    checkBox = "Private";
                else
                    checkBox = "Public";
                imagedata.Parameters.AddWithValue("@Private", checkBox);

                imagedata.Parameters.AddWithValue("@Cuisine", CuisineList.Text);



                var bytes = (byte[])imagedata.ExecuteScalar();
                var strBase64 = Convert.ToBase64String(bytes);
                var imageUrl = "data:Image;base64," + strBase64;

                var createDiv =
                    new HtmlGenericControl("DIV");
                    
                createDiv.Attributes["class"] ="col-md-4 col-sm-6 col-xs-8 col-lg-4";
                
                 
                    createDiv.InnerHtml = "<div class='thumbnail'><img class='img-responsive img-rounded img-thumbnail' src=" + imageUrl + " alt='Mountain View' style=' height: 250px; '> <div class='caption'> <h2>" + reader["RecipeName"] + "</h2></div>" + "<p>" + reader["RecipeDescription"] + "</p>"+ "<a id='moreinfo' useCapture='true' class='btn btn-info' href='moreInfo.aspx''>More Info</a></div>";
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

