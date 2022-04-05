<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RestaurantReviewSystem_WebClient._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Content/MyCss/default.css" />
    <link rel="stylesheet" href="Content/MyCss/Carousel.css" />
    <link rel="stylesheet" href="Content/MyCss/Progress.css" />

        <div class="mylabel">
            <asp:Label ID="Message" runat="server" Text="" BackColor="Yellow" Width=100%></asp:Label>
        </div>

    <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <li class="seq-in">
              <div class="seq-model">
                <img data-seq src="Content/StaticFiles/dish1.png" />
              </div>

              <div class="seq-title">
                <h2 data-seq>Full Gujarati Dish Chaska</h2>
                <h3 data-seq>Gujarati Dishes</h3>
              </div>
            </li>

            <li>
              <div class="seq-model">
                <img data-seq src="Content/StaticFiles/dish2.png"  />
              </div>

              <div class="seq-title">
                <h2 data-seq>Mashala Dosa</h2>
                <h3 data-seq>South Indian Dishes</h3>
              </div>
            </li>

            <li>
              <div class="seq-model">
                <img data-seq src="Content/StaticFiles/dish3.png" />
              </div>

              <div class="seq-title">
                <h2 data-seq>Onian Pizza</h2>
                <h3 data-seq>Italian Dishes</h3>
              </div>
            </li>
          </ul>
        </div>

        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <button type="button" class="seq-prev" aria-label="Previous">Previous</button>
          <button type="button" class="seq-next" aria-label="Next">Next</button>
        </fieldset>
      </div>

      <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/154/imagesloaded.pkgd.min.js"></script>
      <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/154/hammer.min.js"></script>
      <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/154/sequence.min.js"></script>
      <script src="Content/MyJs/Carousel.js"></script>

    <%-- ////////////////////////////////////////////////////////////////////////////////////////////////////// --%>

     <div class="grid">
         <%for (int i = 0; i < l.Count; i++){%>
            <div class="card card__one" style="margin-top:10px;margin-bottom:10px">
		        <figure class="card__img">
                    <div class="imgcontainer" >
			            <%--<img src="https://res.cloudinary.com/jasonheecs/image/upload/v1479748567/card-hover/photo-1.jpg" width="340" height="280" />--%>
                        <% Image1.ImageUrl = string.Concat(path, l[i].ImageName); %>
                        <asp:Image ID="Image1" Width="340" Height="280" runat="server" />
		                <div class="top-left">
                            <%--<%=l[i].RestaurantId%>--%>
                            <%id = l[i].RestaurantId;
                                Label1.Text=l[i].RestaurantId.ToString();
                                Label1.ID = l[i].RestaurantId.ToString();
                                %>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
		                </div>
                    </div>
                </figure>
		        <div class="card__desc" style="text-align:center">
			        <h2><b><%=l.ElementAt(i).RestaurantName%></b></h2>
                    <%--<%HyperLink1.NavigateUrl = string.Concat("~/Restaurant/View?id=", id.ToString());%>
                    <asp:HyperLink ID="HyperLink1" runat="server" ><%=string.Concat("~/Restaurant/View?id=", id.ToString()) %></asp:HyperLink>--%>

		        </div>

                <div style="display:flex; flex-wrap:wrap; justify-content:center;">
                    <%
                        if(Context.User.Identity.GetUserName()=="admin@admin.com")
                            HyperLink1.NavigateUrl = string.Concat("~/Restaurant/AdminView?id=", id.ToString());
                        else if(Context.User.Identity.GetUserName()!="admin@admin.com" && Context.User.Identity.GetUserName()!="")
                            HyperLink1.NavigateUrl = string.Concat("~/Restaurant/CustomerView?id=", id.ToString());
                        else
                            HyperLink1.NavigateUrl = string.Concat("~/Restaurant/View?id=", id.ToString());
                    %>
                    <asp:HyperLink CssClass="action-button button1" ForeColor="White" ID="HyperLink1" runat="server">View</asp:HyperLink>
                    
                    <%if (Context.User.Identity.GetUserName() == "admin@admin.com"){ %>
                        <% HyperLink2.NavigateUrl = string.Concat("~/Restaurant/AdminView?id=", id.ToString(),"#updateRestaurant");%>
                        <asp:HyperLink ID="HyperLink2" CssClass="action-button button2" ForeColor="White" runat="server">Update</asp:HyperLink>

                        <% HyperLink3.NavigateUrl = string.Concat("~/Restaurant/AdminView?id=", id.ToString(),"#deleteRestaurant");%>
                        <asp:HyperLink ID="HyperLink3" CssClass="action-button button3" ForeColor="White" runat="server">Delete</asp:HyperLink>
                    <%} %>
                </div>
                    <h4><b>Average Rating</b></h4>

                <div style="display:flex; flex-wrap:wrap; justify-content:center;">
                    <p style="width:80%" data-value="<%=avg_food_review[i] %>">Food</p>
		            <progress max="100" value="<%=avg_food_review[i] %>"  class="html5"></progress>

                    <p style="width:80%" data-value="<%=avg_service_review[i] %>">Service</p>
		            <progress max="100" value="<%=avg_service_review[i] %>"  class="html5"></progress>

                    <p style="width:80%" data-value="<%=avg_parking_review[i] %>">Parking</p>
		            <progress max="100" value="<%=avg_parking_review[i] %>"  class="html5"></progress>

                    <p style="width:80%" data-value="<%=avg_cleanliness_review[i] %>">Cleanliness</p>
		            <progress max="100" value="<%=avg_cleanliness_review[i] %>"  class="html5"></progress>
                </div>
            </div>
         <%}%>
        </div>
    <script type="text/javascript" src="Content/MyJs/default.js"></script>

    <%-- 
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    --%>
</asp:Content>
