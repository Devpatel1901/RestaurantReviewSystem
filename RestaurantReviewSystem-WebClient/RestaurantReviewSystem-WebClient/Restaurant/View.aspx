<%@ Page Title="View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.Restaurant.View" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Content/MyCss/Restaurant-View.css" />
    

    <section class="et-hero-tabs" style="margin-top:10px">
      <%--<h1>STICKY SLIDER NAV</h1>
      <h3>Sliding content with sticky tab nav</h3>--%>
      <%--<img src="../Content/MyImg/p.jpg" class="myimg"/>--%>
      
      <% Image1.ImageUrl = imageSrc;%>

      <asp:Image ID="Image1" runat="server" CssClass="myimg" />

      <div class="et-hero-tabs-container" style="position:fixed;display:flex;">
        <a class="et-hero-tab" href="#viewRestaurant">View</a>
        <a class="et-hero-tab" href="#Food-Review">Food-Review</a>
        <a class="et-hero-tab" href="#Service-Review">Service-Review</a>
        <a class="et-hero-tab" href="#Parking-Review">Parking-Review</a>
        <a class="et-hero-tab" href="#Cleanliness-Review">Cleanliness-Review</a>
        <span class="et-hero-tab-slider"></span>
      </div>
    </section>
  
    <main class="et-main">
      <section class="et-slide" id="viewRestaurant">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
            <h4><b>View</b></h4>
            <div class="text-input">
                <asp:Label ID="Label1" runat="server" Text="Restaurant ID Number:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
             </div>
            <div class="text-input">
                <asp:Label ID="Label2" runat="server" Text="Restaurant Name : "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
                </div>
            <div class="text-input">
                <asp:Label ID="Label3" runat="server" Text="Restaurant Email : "></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
                </div>
            <div class="text-input">
                <asp:Label ID="Label4" runat="server" Text="Restaurant Contact Number : "></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
            </div>
            <div class="text-input">
                <asp:Label ID="Label5" runat="server" Text="Restaurant City : "></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
            </div>
            <div class="text-input">
                <asp:Label ID="Label15" runat="server" Text="Restaurant Address : "></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
            </div>
            <div class="text-input">
                <asp:Label ID="Label6" runat="server" Text="Restaurant Cuisine Category : "></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" CssClass="input" Text="1"></asp:TextBox>
             </div>
        </div>
      </section>
        <%-- //////////////////////////////////////////////////////////////////////////////////////////////// --%>

        <section class="et-slide" id="Food-Review">
            <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
                <div>
                    <asp:Label ID="Label10" runat="server" Text="You Need To Login/Register For Give Food-Review."  CssClass="mylabel"></asp:Label>
                </div>
                &nbsp;
                &nbsp;
                <div>
                    Click hear For <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Account/Login" runat="server"><u>Login</u></asp:HyperLink>
                </div>
            </div>
        </section>
      

        <%-- ///////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Service-Review">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
            <div>
                <asp:Label ID="Label7" runat="server" Text="You Need To Login/Register For Give Service-Review."  CssClass="mylabel"></asp:Label>
            </div>
            &nbsp;
            &nbsp;
            <div>
                Click hear For <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Account/Login" runat="server"><u>Login</u></asp:HyperLink>
            </div>
        </div>
      </section>

        <%-- ///////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Parking-Review">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
            <div>
                <asp:Label ID="Label8" runat="server" Text="You Need To Login/Register For Give Parking-Review."  CssClass="mylabel"></asp:Label>
            </div>
            &nbsp;
            &nbsp;
            <div>
                Click hear For <asp:HyperLink ID="HyperLink3" NavigateUrl="~/Account/Login" runat="server"><u>Login</u></asp:HyperLink>
            </div>
        </div>
      </section>


        <%-- ////////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Cleanliness-Review">
          <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
                <div>
                    <asp:Label ID="Label9" runat="server" Text="You Need To Login/Register For Give Cleanliness-Review."  CssClass="mylabel"></asp:Label>
                </div>
                &nbsp;
                &nbsp;
                <div>
                    Click hear For <asp:HyperLink ID="HyperLink4" NavigateUrl="~/Account/Login" runat="server"><u>Login</u></asp:HyperLink>
                </div>
            </div>
      </section>
    </main>

    <script type="text/javascript" src="../Content/MyJs/Ratting.js"></script>
</asp:Content>
