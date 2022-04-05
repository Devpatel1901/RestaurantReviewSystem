<%@ Page Title="AdminView" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.Restaurant.AdminView" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Content/MyCss/Restaurant-View.css" />
    <link rel="stylesheet" href="../Content/MyCss/Restaurant-Add.css" />

    

    <section class="et-hero-tabs" style="margin-top:10px">
      <%--<h1>STICKY SLIDER NAV</h1>
      <h3>Sliding content with sticky tab nav</h3>--%>
      <%--<img src="../Content/MyImg/p.jpg" class="myimg"/>--%>
      <% Image1.ImageUrl = imageSrc;%>

      <asp:Image ID="Image1" runat="server" CssClass="myimg" />

      <div class="et-hero-tabs-container" style="position:fixed;display:flex;">
        <a class="et-hero-tab" href="#viewRestaurant">View</a>
        <a class="et-hero-tab" href="#updateRestaurant">Update</a>
        <a class="et-hero-tab" href="#deleteRestaurant">Delete</a>
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
      <section class="et-slide" id="updateRestaurant">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="">
                        <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                            <h4 id="heading">Update Restaurant Information</h4>
                            <p>Fill all form field to go to next step</p>
                            <div id="msform">
                                <ul id="progressbar">
                                    <li class="active" id="account">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cup-straw" viewBox="0 0 16 16"><path d="M13.902.334a.5.5 0 0 1-.28.65l-2.254.902-.4 1.927c.376.095.715.215.972.367.228.135.56.396.56.82 0 .046-.004.09-.011.132l-.962 9.068a1.28 1.28 0 0 1-.524.93c-.488.34-1.494.87-3.01.87-1.516 0-2.522-.53-3.01-.87a1.28 1.28 0 0 1-.524-.93L3.51 5.132A.78.78 0 0 1 3.5 5c0-.424.332-.685.56-.82.262-.154.607-.276.99-.372C5.824 3.614 6.867 3.5 8 3.5c.712 0 1.389.045 1.985.127l.464-2.215a.5.5 0 0 1 .303-.356l2.5-1a.5.5 0 0 1 .65.278zM9.768 4.607A13.991 13.991 0 0 0 8 4.5c-1.076 0-2.033.11-2.707.278A3.284 3.284 0 0 0 4.645 5c.146.073.362.15.648.222C5.967 5.39 6.924 5.5 8 5.5c.571 0 1.109-.03 1.588-.085l.18-.808zm.292 1.756C9.445 6.45 8.742 6.5 8 6.5c-1.133 0-2.176-.114-2.95-.308a5.514 5.514 0 0 1-.435-.127l.838 8.03c.013.121.06.186.102.215.357.249 1.168.69 2.438.69 1.27 0 2.081-.441 2.438-.69.042-.029.09-.094.102-.215l.852-8.03a5.517 5.517 0 0 1-.435.127 8.88 8.88 0 0 1-.89.17zM4.467 4.884s.003.002.005.006l-.005-.006zm7.066 0-.005.006c.002-.004.005-.006.005-.006zM11.354 5a3.174 3.174 0 0 0-.604-.21l-.099.445.055-.013c.286-.072.502-.149.648-.222z"/></svg>
                                        <strong>Restaurant</strong>
                                    </li>
                                    <li id="personal">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16"><path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/></svg>
                                        <strong>Contact</strong>
                                    </li>
                                    <li id="payment">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16"><path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/></svg>
                                        <strong>Address</strong>
                                    </li>
                                    <li id="confirm">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-table" viewBox="0 0 16 16"><path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/></svg>
                                        <strong>Cuisine</strong>
                                    </li>
                                    <li></li>
                                </ul>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                </div> 
                                <br>
                                <asp:Label ID="Label8" runat="server" Text="" CssClass="fs-title" ForeColor="Orange"></asp:Label>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Restaurant Information:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 1 - 4</h2>
                                            </div>
                                        </div> 
                                        <div style="display: flex; flex-wrap:wrap; justify-content: center;">
                                            <div>
                                                <asp:Label ID="Label9" runat="server" Text="Restaurant Name" CssClass="fieldlabels"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="UName" MaxLength="50" runat="server" placeholder="Restaurant Name" CssClass="input"></asp:TextBox>

                                                <asp:Label ID="Label16" runat="server" Text="Restaurant Image" CssClass="fieldlabels"></asp:Label>
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <asp:Label ID="ULabel16" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Contact Information:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 2 - 4</h2>
                                            </div>
                                        </div>
                                        <div style="display: flex; flex-wrap:wrap; justify-content: center;">
                                            <div>
                                                <asp:Label ID="Label10" runat="server" Text="Restaurant Email" CssClass="fieldlabels"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="UEmail" MaxLength="50" runat="server" placeholder="Email Id" CssClass="input" Text=""></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label11" runat="server" Text="Restaurant Contact Number" CssClass="fieldlabels"></asp:Label>
                                                <asp:TextBox ID="UContact" MaxLength="10" runat="server" placeholder="Phone No." CssClass="input" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" /> 
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Address Information:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 3 - 4</h2>
                                            </div>
                                        </div>
                                        <div style="display: flex; flex-wrap:wrap; justify-content: center;">
                                            <div>
                                                <asp:Label ID="Label12" runat="server" Text="Restaurant City" CssClass="fieldlabels"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="UCity" MaxLength="50" runat="server" placeholder="Enter City..." CssClass="input" ></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Label13" runat="server" Text="Restaurant Address" CssClass="fieldlabels"></asp:Label>
                                                <asp:TextBox ID="UAddress" MaxLength="200" runat="server" placeholder="Enter Address..." CssClass="input" ></asp:TextBox>
                                            </div>
                                        </div>
                                    </div> 
                                    <input type="button" name="next" class="next action-button" value="Next" /> 
                                    <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                </fieldset>
                                <fieldset>
                                    <div class="form-card">
                                        <div class="row">
                                            <div class="col-7">
                                                <h2 class="fs-title">Cuisine Information:</h2>
                                            </div>
                                            <div class="col-5">
                                                <h2 class="steps">Step 4 - 4</h2>
                                            </div>
                                        </div>
                                        <div style="display: flex; flex-wrap:wrap; justify-content: center;">
                                            <div>
                                                <asp:Label ID="Label14" runat="server" Text="Cuisine Category" CssClass="fieldlabels"></asp:Label>
                                                <br />
                                                <asp:TextBox ID="UCusine" runat="server" MaxLength="50" placeholder="Enter Cuisine Category..." CssClass="input" ></asp:TextBox>
                                        
                                            </div>
                                        </div>
                                        <asp:Button ID="Update" runat="server" CssClass="next action-button" Text="Update" OnClick="update_Click1" />
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </section>

        <%-- ///////////////////////////////////////////////////////////////////////////////////////////////// --%>

      <section class="et-slide" id="deleteRestaurant">
        <div style="background-color:white;border:1px solid black;padding:20px;border-radius:10px">
            <div>
                <asp:Label ID="Label7" runat="server" Text="Are You Really Want to Delete ?"  CssClass="mylabel"></asp:Label>
            </div>
            &nbsp;
            &nbsp;
            <div>
                <asp:Button ID="delete" runat="server" Text="Delete" CssClass="action-button button3" OnClick="Delete_Click"/>
            </div>
        </div>
      </section>
    </main>

    <script type="text/javascript" src="../Content/MyJs/Restaurant-Add.js"></script>
</asp:Content>
