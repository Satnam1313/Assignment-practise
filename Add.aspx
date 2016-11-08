<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container formtext text padd">
    <div class="row">
        <section class="col-sm-12">
    <div class="form-horizontal">
   <div class="form-group ">
       <asp:Label CssClass="col-sm-3 control-label " ID="RecipeName" runat="server" Text="Recipe Name"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control"  ID="Recipebox" runat="server"></asp:TextBox>
    </div></div></div>
             <div class="form-horizontal">
   <div class="form-group ">
       <asp:Label CssClass="col-sm-3 control-label " ID="SubmittedBy" runat="server" Text="Submitted By"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control"  ID="SubmittedBox" runat="server"></asp:TextBox>
    </div></div></div>
            <div class="form-horizontal">
             <div class="form-group ">
                 <asp:Label CssClass="col-sm-3 control-label " ID="Category" runat="server" Text="Category"></asp:Label> 
                 <div class="col-sm-6"><asp:DropDownList CssClass="dropdown form-control text" ID="CategoryList" runat="server">
                <asp:ListItem>Vegeterian</asp:ListItem>
                <asp:ListItem>Non-Veg</asp:ListItem>
            </asp:DropDownList>
                     </div>
      </div>
        </div>
               <div class="form-horizontal">
   <div class="form-group ">
       <asp:Label CssClass="col-sm-3 control-label " ID="CookingTime" runat="server" Text="Cooking Time"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox CssClass="form-control"  ID="CookingTimeBox" runat="server"></asp:TextBox> 
      </div></div></div>
        <div class="form-horizontal">
             <div class="form-group ">
                 <asp:Label CssClass="col-sm-3 control-label " ID="Cuisine" runat="server" Text="Cuisine"></asp:Label> 
                 <div class="col-sm-6">
                     <asp:DropDownList CssClass="dropdown  form-control  text" ID="CuisineList" runat="server">
                         <asp:ListItem>Snack</asp:ListItem>
                         <asp:ListItem>Meal</asp:ListItem>
                         <asp:ListItem>Dessert</asp:ListItem>
                         <asp:ListItem>Appetizers</asp:ListItem>
                     </asp:DropDownList>

  </div>
      </div>
        </div>
             <div class="form-horizontal">
   <div class="form-group ">
      
        <div class="col-sm-9 col-sm-offset-3"><asp:CheckBox CssClass="control-label"  ID="Private" runat="server" /><asp:Label CssClass="" ID="PrivateLabel" runat="server" Text="Mark as private"></asp:Label>
      </div></div></div>
            <div class="form-horizontal">
   <div class="form-group ">
       <asp:Label CssClass="col-sm-3 control-label " ID="RecipeDescription" runat="server" Text="Recipe Description"></asp:Label>
      <div class="col-sm-6 ">
        <asp:TextBox ID="Steps" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
      </div></div></div>
               <div class="form-horizontal">
   <div class="form-group ">
       <asp:Label ID="RecipeSteps" CssClass="col-sm-3 control-label" runat="server" Text="Recipe Steps">
          </asp:Label>
      <div class="col-sm-6 ">
         <asp:TextBox ID="RecipeStep" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
      </div></div></div>
            <div class="form-horizontal">
             <div class="form-group ">
      <asp:Label CssClass="col-sm-3 control-label " ID="Image" runat="server" Text="Upload Image"></asp:Label>
      <div class="col-sm-6 ">
     <asp:FileUpload  CssClass="form-control btn-primary"   ID="ImageUpload" runat="server" Font-Names="Upload Image" Font-Strikeout="False"  Text="Browse" OnClick="ImageUpload_Click"  /><div style="padding-top: 5px"><asp:PlaceHolder   ID="PlaceHolder1" runat="server"><mark class="text-warning">It add the description to recipe</mark></asp:PlaceHolder></div>
      </div></div>
           </div>
            <div class="col-sm-9 btn-toolbar ">
                <asp:Button  class="btn btn-warning pull-right Cancel" id="Cancel" type="reset" value="Cancel" Text="Cancel" runat="server"/>&nbsp; <asp:Button class="btn btn-success pull-right Submit" id="Submit" type="submit" Text="Submit"  runat="server" OnClick="Submit_Click"  />
            </div>
           
                
                
        </section>
   </div></div>
</asp:Content>

