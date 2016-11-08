<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container formtext text padd">
        <div class="row">
            <section class="col-sm-12">


                <div class="form-horizontal">
                    <div class="form-group ">
                        <asp:Label CssClass="col-sm-3 control-label " ID="RecipeName" runat="server" Text="Recipe Name"></asp:Label>
                        <div class="col-sm-4 ">
                            <asp:TextBox CssClass="form-control" ID="RecipeBox" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-horizontal">
                    <div class="form-group ">
                        <asp:Label CssClass="col-sm-3 control-label " ID="Cuisine" runat="server" Text="Cuisine"></asp:Label>
                        <div class="col-sm-4">
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

                        <div class="col-sm-9 col-sm-offset-3">
                            <asp:CheckBox CssClass="control-label" ID="Private" runat="server"/><asp:Label CssClass="" ID="PrivateLabel" runat="server" Text="Search in private repo"></asp:Label>

                        </div>
                    </div>
                </div>
                <div class="col-sm-8 btn-toolbar ">
                    <input class="btn btn-success pull-right Submit" id="Submit" type="submit" value="Search" runat="server"/>
                </div>


            </section>
        </div>
    </div>
</asp:Content>

