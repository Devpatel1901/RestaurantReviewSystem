<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>--%>

    <link rel="stylesheet" href="Content/MyCss/About.css" />

    <h1 class="hadding1">About Us!</h1>
    <div class = "words">
        <h3 class="hadding2">
            Restaurant Review System !
        </h3>
        <ul>
            <li>
                <b>Restaurant Review System</b> is a Web Application that provide a facility to User to collect information about Restaurant and 
                get different review like Food-Review, Service-review, Parking-Review and Cleanliness-Review to all different Restaurant.
            </li>
            <li>
                Hear we use two types of Services:
                <ul>
                    <li>(1) For Manage Restaurant Data. </li>
                    <li>(2) For Manage Rate given by User.</li>
                </ul>
            </li>
        </ul>
    </div>

    <hr />

    <div>
        <h3 class="hadding2">
            Developers
        </h3>

        <div class="grid">
            <div class="card card__one" style="margin-top:10px;margin-bottom:10px">
		        <figure class="card__img">
                    <div class="imgcontainer" >
			            <%--<img src="https://res.cloudinary.com/jasonheecs/image/upload/v1479748567/card-hover/photo-1.jpg" width="340" height="280" />--%>
                        <asp:Image ID="Image1" ImageUrl="~/Content/StaticFiles/person.png" Width="340" Height="280" runat="server" />
                    </div>
                </figure>
		        <div class="card__desc" style="text-align:center">
                     <h3>Ronak Padaliya (Semester-6)</h3>
                    <h4 style="color:gray">Computer Engineering Branch</h4>
                    <h4>Dharmsinh Desai University, Nadiad</h4>
		        </div>
            </div>
            <div class="card card__one" style="margin-top:10px;margin-bottom:10px">
		        <figure class="card__img">
                    <div class="imgcontainer" >
			            <%--<img src="https://res.cloudinary.com/jasonheecs/image/upload/v1479748567/card-hover/photo-1.jpg" width="340" height="280" />--%>
                        <asp:Image ID="Image2" ImageUrl="~/Content/StaticFiles/person.png" Width="340" Height="280" runat="server" />
                    </div>
                </figure>
		        <div class="card__desc" style="text-align:center">
                    <h3>Dev Patel (Semester-6)</h3>
                    <h4 style="color:gray">Computer Engineering Branch</h4>
                    <h4>Dharmsinh Desai University, Nadiad</h4>
		        </div>
            </div>
        </div>
    </div>
    
</asp:Content>
