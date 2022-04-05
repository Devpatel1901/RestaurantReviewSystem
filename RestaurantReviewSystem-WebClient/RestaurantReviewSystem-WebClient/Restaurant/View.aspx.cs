using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient.Restaurant
{
    public partial class View : System.Web.UI.Page
    {
        public int id = 0;
        public string imageSrc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!="" && Request.QueryString["id"]!=null && !Context.User.Identity.IsAuthenticated)
            {
                TextBox1.Text = Request.QueryString["id"];
                id = int.Parse(Request.QueryString["id"]);

                RestaurantServiceReference.RestaurantServiceClient proxy = new RestaurantServiceReference.RestaurantServiceClient();
                RestaurantServiceReference.Restaurant r = proxy.GetRestaurantById(int.Parse(Request.QueryString["id"]));

                TextBox2.Text = r.RestaurantName;
                TextBox3.Text = r.EmailAddress;
                TextBox4.Text = r.ContactNumber.ToString();
                TextBox5.Text = r.City;
                TextBox6.Text = r.CusineCategory;
                TextBox7.Text = r.Address;
                imageSrc = "../Content/Images/" + r.ImageName;
            }
            else
                Response.Redirect("~/");
        }

        protected void redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login");
        }
    }
}