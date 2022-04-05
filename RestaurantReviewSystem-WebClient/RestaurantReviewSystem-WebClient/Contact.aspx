<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="Content/MyCss/Contact.css"/>

    <%--<h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>--%>

    <h1 class="hadding1">Contact Us!</h1>

    <div style="display:flex;justify-content:center;">
        <div>
            <div style="display:flex;justify-content:center;">
                <img src="Content/StaticFiles/ddu.png" class="myimg"/>
            </div>
            <h2>Dharmsinh Desai University, Nadiad</h2>
            <h3 style="color:gray;">College Rd, Chalali, Nadiad, Gujarat 387001</h3>
        </div>
    </div>

    <hr />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700,600' rel='stylesheet' type='text/css'>
    <div class="mybody">
        <div class="box">
            <h3>Send to Developer</h3>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" class="email" placeholder="Name..."></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Name is Required..." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" class="email" placeholder="Email..."></asp:TextBox>
            <br />            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Email is Required..." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" runat="server" class="email" placeholder="Meesage..."></asp:TextBox>
            <br />            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="Message is Required..." ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            <br />
            Send Mail To :- 
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="ronakpadaliya77@gmail.com">Ronak Padaliya</asp:ListItem>
                <asp:ListItem Value="entrepreneurdev1901@gmail.com">Dev Patel</asp:ListItem>
            </asp:DropDownList>
            <div>
            <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn2" OnClick="Button2_Click" />
                </div>
        </div>
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>


</asp:Content>
