<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="carousel slide hidden-xs hidden-sm " data-ride="carousel" id="featured">
                <ol class="carousel-indicators">
                    <li data-target="#featured" data-slide-to="0" class="active"></li>
                    <li data-target="#featured" data-slide-to="1"></li>
                    <li data-target="#featured" data-slide-to="2"></li>
                    <li data-target="#featured" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner ">
                    <div class="item active">
                        <img src="images/Slides/butternut-squash-sabziqqqqqqq.jpg" class="tales"/>
                    </div>


                    <div class="item ">
                        <img src="images/Slides/61.jpg" class="tales"/>
                    </div>


                    <div class="item ">
                        <img src="images/Slides/fast-food-widescreen-wallpaper-5931-6223-hd-wallpapersqqqqqqq.jpg" class="tales"/>
                    </div>


                    <div class="item ">
                        <img src="images/Slides/slide_181.jpg" class="tales"/>
                    </div>
                </div><a class="left carousel-control" href="#featured" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#featured" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>
    <div class="pad container">
        <div class="row">

            <span class="text-justify col-sm-offset-3 control-label" style="font-family: 'Pacifico', cursive; font-size: 40px"> Welcome to Cook Book  </span><i class="fa fa-book  padd" aria-hidden="true" style="padding-top: 25px; font-size: 80px"></i>
        </div>
    </div>
    <div class="services container">
        <div class="row">
            <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6
                 col-md-4  ">
                <a href="Add.aspx" style="color: #000000">
                    <img src="images/Addicon.png" alt="icon" style="height: 179px; width: 184px; margin-right: 0px;"/>
                    <div class="col-xs-offset-1 col-sm-offset-0">
                        <h3 >Add Recipe</h3>

                        <p>You can add your favourite recipies and make make them Private or Public</p>
                    </div>
                </a>
            </section>
            <div class="services container">
                <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-6 col-md-4 ">
                    <a href="Search.aspx" style="color: black">
                        <img src="images/Searchicon.png" alt="icon" style="height: 179px; width: 184px;"/>
                        <div class="col-xs-offset-1 col-sm-offset-0">
                            <h3>Search Recipe</h3>
                            <p >
                                You can serach all the recipies that are specified by the user as public. Recipies specified as <strong class="mark">Private</strong> can only be assessed by <strong class="mark">owner</strong>.
                            </p>
                        </div>
                    </a>
                </section>
                <div class="services container">
                    <section class="col-xs-offset-3 col-xs-6 col-sm-offset-0  col-sm-12 col-md-4 ">
                        <a href="Recipes.aspx" style="color: #000000">
                            <img src="images/Listicon.png" alt="icon" style="height: 179px; width: 184px;"/>
                            <div class="col-xs-offset-1 col-sm-offset-0">
                                <h3> List of Recipies</h3>
                                You can look the most viewed and popular recipies.
                            </div>
                        </a>
                    </section>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

