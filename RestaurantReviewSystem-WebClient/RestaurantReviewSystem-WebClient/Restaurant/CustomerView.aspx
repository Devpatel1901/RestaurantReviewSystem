<%@ Page Title="CustomerView" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerView.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.Restaurant.CustomerView" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Content/MyCss/Restaurant-View.css" />
    <link rel="stylesheet" href="../Content/MyCss/Ratting.css" />
    

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
                <br />
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
                <h1><b>Food Review</b></h1>
                <hr />
                <br />
                    <asp:Label ID="FrMessage" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <br />

                <div class="rating" id="fr">
                    <label title="Food-Rate is 1">
                      <input type="radio" name="stars" id="fr1" value="1" />
                      <span class="icon">★</span>
                    </label>
                    <label title="Food-Rate is 2">
                      <input type="radio" name="stars" id="fr2" value="2" />
                        <%for (int i = 0; i < 2; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 3">
                      <input type="radio" name="stars" id="fr3" value="3" />
                        <%for (int i = 0; i < 3; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>  
                    </label>
                    <label title="Food-Rate is 4">
                      <input type="radio" name="stars" id="fr4" value="4" />
                        <%for (int i = 0; i < 4; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 5">
                      <input type="radio" name="stars" id="fr5" value="5" />
                        <%for (int i = 0; i < 5; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 6">
                      <input type="radio" name="stars" id="fr6" value="6" />
                        <%for (int i = 0; i < 6; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 7">
                      <input type="radio" name="stars" id="fr7" value="7" />
                        <%for (int i = 0; i < 7; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 8">
                      <input type="radio" name="stars" id="fr8" value="8" />
                        <%for (int i = 0; i < 8; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 9">
                      <input type="radio" name="stars" id="fr9" value="9" />
                        <%for (int i = 0; i < 9; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Food-Rate is 10">
                      <input type="radio" name="stars" id="fr10" value="10" />
                        <%for (int i = 0; i < 10; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                  </div>

                <script>

                    let s = "fr"
                    let temp = s.concat(<%=foodRate.ToString()%>)
                    document.getElementById(temp).checked = true;

                    <%--$(':radio').change(function () {
                        console.log('New star rating: ' + this.value);

                        //document.getElementById("lb").innerHTML = this.value;
                        window.location.href = "CustomerView?id=" +<%=id%>+"&fr=" + this.value + "#Food-Review";

                    });
                    let s = "fr"
                    let temp = s.concat(<%=foodRate.ToString()%>)
                    document.getElementById(temp).checked = true;
                    --%>

                </script>
                <%--<label id="lb"></label>--%>

            </div>
        </section>
      

        <%-- ///////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Service-Review">
            <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
                <h1><b>Service Review</b></h1>
                <hr />
                <br />
                    <asp:Label ID="SrMessage" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <div class="rating" id="sr">
                    <label title="Service-Rate is 1">
                      <input type="radio" name="stars2" id="sr1" value="1" />
                      <span class="icon">★</span>
                    </label>
                    <label title="Service-Rate is 2">
                      <input type="radio" name="stars2" id="sr2" value="2" />
                        <%for (int i = 0; i < 2; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 3">
                      <input type="radio" name="stars2" id="sr3" value="3" />
                        <%for (int i = 0; i < 3; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>  
                    </label>
                    <label title="Service-Rate is 4">
                      <input type="radio" name="stars2" id="sr4" value="4" />
                        <%for (int i = 0; i < 4; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 5">
                      <input type="radio" name="stars2" id="sr5" value="5" />
                        <%for (int i = 0; i < 5; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 6">
                      <input type="radio" name="stars2" id="sr6" value="6" />
                        <%for (int i = 0; i < 6; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 7">
                      <input type="radio" name="stars2" id="sr7" value="7" />
                        <%for (int i = 0; i < 7; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 8">
                      <input type="radio" name="stars2" id="sr8" value="8" />
                        <%for (int i = 0; i < 8; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 9">
                      <input type="radio" name="stars2" id="sr9" value="9" />
                        <%for (int i = 0; i < 9; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Service-Rate is 10">
                      <input type="radio" name="stars2" id="sr10" value="10" />
                        <%for (int i = 0; i < 10; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    
                  </div>

                <script>
                    let s2 = "sr"
                    let temp2 = s2.concat(<%=serviceRate.ToString()%>)
                    document.getElementById(temp2).checked = true;
                </script>

            </div>
      </section>

        <%-- ///////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Parking-Review">
            <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
                <h1><b>Parking Review</b></h1>
                <hr />
                <br />
                    <asp:Label ID="PrMessage" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <div class="rating" id="pr">
                    <label title="Parking-Rate is 1">
                      <input type="radio" name="stars3" id="pr1" value="1" />
                      <span class="icon">★</span>
                    </label>
                    <label title="Parking-Rate is 2">
                      <input type="radio" name="stars3" id="pr2" value="2" />
                        <%for (int i = 0; i < 2; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 3">
                      <input type="radio" name="stars3" id="pr3" value="3" />
                        <%for (int i = 0; i < 3; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>  
                    </label>
                    <label title="Parking-Rate is 4">
                      <input type="radio" name="stars3" id="pr4" value="4" />
                        <%for (int i = 0; i < 4; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 5">
                      <input type="radio" name="stars3" id="pr5" value="5" />
                        <%for (int i = 0; i < 5; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 6">
                      <input type="radio" name="stars3" id="pr6" value="6" />
                        <%for (int i = 0; i < 6; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 7">
                      <input type="radio" name="stars3" id="pr7" value="7" />
                        <%for (int i = 0; i < 7; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 8">
                      <input type="radio" name="stars3" id="pr8" value="8" />
                        <%for (int i = 0; i < 8; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 9">
                      <input type="radio" name="stars3" id="pr9" value="9" />
                        <%for (int i = 0; i < 9; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Parking-Rate is 10">
                      <input type="radio" name="stars3" id="pr10" value="10" />
                        <%for (int i = 0; i < 10; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                  </div>

                <script>
                    let s3 = "pr"
                    temp3 = s3.concat(<%=parkingRate.ToString()%>)
                    document.getElementById(temp3).checked = true;
                </script>
            </div>
      </section>

        <%-- ////////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="Cleanliness-Review">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
                <h1><b>Cleanliness Review</b></h1>
                <hr />
                <br />
                    <asp:Label ID="CrMessage" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <div class="rating" id="cr">
                    <label title="Cleanliness-Rate is 1">
                      <input type="radio" name="stars4" id="cr1" value="1" />
                      <span class="icon">★</span>
                    </label>
                    <label title="Cleanliness-Rate is 2">
                      <input type="radio" name="stars4" id="cr2" value="2" />
                        <%for (int i = 0; i < 2; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 3">
                      <input type="radio" name="stars4" id="cr3" value="3" />
                        <%for (int i = 0; i < 3; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>  
                    </label>
                    <label title="Cleanliness-Rate is 4">
                      <input type="radio" name="stars4" id="cr4" value="4" />
                        <%for (int i = 0; i < 4; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 5">
                      <input type="radio" name="stars4" id="cr5" value="5" />
                        <%for (int i = 0; i < 5; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 6">
                      <input type="radio" name="stars4" id="cr6" value="6" />
                        <%for (int i = 0; i < 6; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 7">
                      <input type="radio" name="stars4" id="cr7" value="7" />
                        <%for (int i = 0; i < 7; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 8">
                      <input type="radio" name="stars4" id="cr8" value="8" />
                        <%for (int i = 0; i < 8; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 9">
                      <input type="radio" name="stars4" id="cr9" value="9" />
                        <%for (int i = 0; i < 9; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                    <label title="Cleanliness-Rate is 10">
                      <input type="radio" name="stars4" id="cr10" value="10" />
                        <%for (int i = 0; i < 10; i++ ){%>
                            <span class="icon">★</span>
                        <%} %>
                    </label>
                  </div>
            <script>
                s4 = "cr"
                temp4 = s4.concat(<%=cleanlinessRate.ToString()%>)
                document.getElementById(temp4).checked = true;
            </script>
            </div>
      </section>

        <script>
            $(':radio').change(function () {
                console.log('New star rating: ' + this.value + " " + $(this).attr("id"));

                if ($(this).attr("id")[0] == "f" && $(this).attr("id")[1] == 'r')
                    window.location.href = "CustomerView?id=" +<%=id%>+"&fr=" + this.value + "#Food-Review";
                else if ($(this).attr("id")[0] == "s" && $(this).attr("id")[1] == 'r')
                    window.location.href = "CustomerView?id=" +<%=id%>+"&sr=" + this.value + "#Service-Review";
                else if ($(this).attr("id")[0] == "p" && $(this).attr("id")[1] == 'r')
                    window.location.href = "CustomerView?id=" +<%=id%>+"&pr=" + this.value + "#Parking-Review";
                else if ($(this).attr("id")[0] == "c" && $(this).attr("id")[1] == 'r')
                    window.location.href = "CustomerView?id=" +<%=id%>+"&cr=" + this.value + "#Cleanliness-Review";
            });
            
        </script>
    </main>

    <script type="text/javascript" src="../Content/MyJs/Ratting.js"></script>
</asp:Content>
