<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="RestaurantReviewSystem_WebClient.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <%--<h2><%: Title %>.</h2>--%>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>

    <link href="../Content/MyCss/Profile.css" rel="stylesheet"/>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Profile Information:</dt>
                    <dd>
                        <table>
                            <tr >
                                <td style="padding:10px;border-radius:3px;">
                                    <asp:Label ID="Label1" runat="server" Text="User ID:" CssClass="label"></asp:Label>
                                </td>
                                <td style="padding:10px;">
                                    <%--<asp:TextBox ID="TextBox1" runat="server" CssClass="input" Enabled="false"></asp:TextBox>--%>
                                    <asp:Label ID="Label4" runat="server" CssClass="input"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding:10px;border-radius:3px;">
                                    <asp:Label ID="Label2" runat="server" Text="User Name:" CssClass="label"></asp:Label>
                                </td>
                                <td style="padding:10px;">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" Enabled="false"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="padding:10px;border-radius:3px;">
                                    <asp:Label ID="Label3" runat="server" Text="User Email:" CssClass="label" ></asp:Label>
                                </td>
                                <td style="padding:10px;">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input" Enabled="false"></asp:TextBox>
                                </td>
                            </tr>

                            <%--<tr>
                                <td style="padding:10px;">
                                    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="action-button button1" OnClick="Button1_Click" />
                                </td>
                                <td style="padding:10px;">
                                    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="action-button button2" Visible="false" OnClick="Button2_Click"/>
                                </td>
                            </tr>--%>
                        </table>
                    </dd>
                    <dt>Password:</dt>
                    <dd>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="Click Hear For [Change]..." Visible="false" ID="ChangePassword" runat="server" />
                        <br />
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]"  Visible="false" ID="CreatePassword" runat="server" />
                    </dd>

                    <%--<dt>External Logins:</dt>
                    <dd><%: LoginsCount %>
                        <asp:HyperLink NavigateUrl="/Account/ManageLogins" Text="[Manage]" runat="server" />
                    </dd>--%>
                </dl>
            </div>
        </div>
    </div>

</asp:Content>
