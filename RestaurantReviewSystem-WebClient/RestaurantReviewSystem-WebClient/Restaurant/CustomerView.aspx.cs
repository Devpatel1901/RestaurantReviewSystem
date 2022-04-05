using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient.Restaurant
{
    public partial class CustomerView : System.Web.UI.Page
    {
        public int id = 0;
        public int foodRate = 0;
        public int serviceRate = 0;
        public int parkingRate = 0;
        public int cleanlinessRate = 0;
        public string imageSrc;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
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

                RestaurantReviewServiceReference.RestaurantReview review = new RestaurantReviewServiceReference.RestaurantReview();
                RestaurantReviewServiceReference.RestaurantReviewServiceClient reviewproxy = new RestaurantReviewServiceReference.RestaurantReviewServiceClient();

                review = reviewproxy.GetReviewByRestaurantIdandUserId(id, Context.User.Identity.GetUserId());

                if (Request.QueryString["fr"] != "" && Request.QueryString["fr"] != null)
                {
                    //Label7.Text = Request.QueryString["fr"];

                    review.RestaurantId = id;
                    review.UserId = Context.User.Identity.GetUserId();

                    if (review.quality_of_food==0 && review.service==0 && review.parkingfacility==0 && review.cleanliness==0)
                    {
                        FrMessage.Text = "Food Review Added !";
                        FrMessage.ForeColor = System.Drawing.Color.Green;
                        review.quality_of_food = int.Parse(Request.QueryString["fr"]);
                        reviewproxy.AddReview(review).ToString();
                    }
                    else
                    {
                        if(review.quality_of_food==0)
                            FrMessage.Text = "Food Review Added !";
                        else
                            FrMessage.Text = "Food Review Updated to " + Request.QueryString["fr"] + " !";
                        FrMessage.ForeColor = System.Drawing.Color.Green;
                        review.quality_of_food = int.Parse(Request.QueryString["fr"]);
                        reviewproxy.UpdateReview(review);
                    }
                    foodRate = int.Parse(Request.QueryString["fr"]);
                    serviceRate = (int)review.service;
                    parkingRate = (int)review.parkingfacility;
                    cleanlinessRate = (int)review.cleanliness;
                }
                else if (Request.QueryString["sr"] != "" && Request.QueryString["sr"] != null)
                {
                    review.RestaurantId = id;
                    review.UserId = Context.User.Identity.GetUserId();

                    if (review.quality_of_food == 0 && review.service == 0 && review.parkingfacility == 0 && review.cleanliness == 0)
                    {
                        SrMessage.Text = "Service Review Added !";
                        SrMessage.ForeColor = System.Drawing.Color.Green;
                        review.service = int.Parse(Request.QueryString["sr"]);
                        reviewproxy.AddReview(review).ToString();
                    }
                    else
                    {
                        if (review.service == 0)
                            SrMessage.Text = "Service Review Added !";
                        else
                            SrMessage.Text = "Service Review Updated to " + Request.QueryString["sr"] + " !";
                        SrMessage.ForeColor = System.Drawing.Color.Green;
                        review.service = int.Parse(Request.QueryString["sr"]);
                        reviewproxy.UpdateReview(review);
                    }
                    foodRate = (int)review.quality_of_food;
                    serviceRate = int.Parse(Request.QueryString["sr"]);
                    parkingRate = (int)review.parkingfacility;
                    cleanlinessRate = (int)review.cleanliness;
                }
                else if (Request.QueryString["pr"] != "" && Request.QueryString["pr"] != null)
                {
                    review.RestaurantId = id;
                    review.UserId = Context.User.Identity.GetUserId();

                    if (review.quality_of_food == 0 && review.service == 0 && review.parkingfacility == 0 && review.cleanliness == 0)
                    {
                        PrMessage.Text = "Parking Review Added !";
                        PrMessage.ForeColor = System.Drawing.Color.Green;
                        review.parkingfacility = int.Parse(Request.QueryString["pr"]);
                        reviewproxy.AddReview(review).ToString();
                    }
                    else
                    {
                        if (review.parkingfacility == 0)
                            PrMessage.Text = "Parking Review Added !";
                        else
                            PrMessage.Text = "Parking Review Updated to " + Request.QueryString["pr"] + " !";
                        PrMessage.ForeColor = System.Drawing.Color.Green;
                        review.parkingfacility = int.Parse(Request.QueryString["pr"]);
                        reviewproxy.UpdateReview(review);
                    }
                    foodRate = (int)review.quality_of_food;
                    serviceRate = (int)review.service;
                    parkingRate = int.Parse(Request.QueryString["pr"]);
                    cleanlinessRate = (int)review.cleanliness;
                }
                else if (Request.QueryString["cr"] != "" && Request.QueryString["cr"] != null)
                {
                    review.RestaurantId = id;
                    review.UserId = Context.User.Identity.GetUserId();

                    if (review.quality_of_food == 0 && review.service == 0 && review.parkingfacility == 0 && review.cleanliness == 0)
                    {
                        CrMessage.Text = "Cleanliness Review Added !";
                        CrMessage.ForeColor = System.Drawing.Color.Green;
                        review.cleanliness = int.Parse(Request.QueryString["cr"]);
                        reviewproxy.AddReview(review).ToString();
                    }
                    else
                    {
                        if(review.cleanliness==0)
                            CrMessage.Text= "Cleanliness Review Added !";
                        else
                            CrMessage.Text = "Cleanliness Review Updated to " + Request.QueryString["cr"] + " !";
                        CrMessage.ForeColor = System.Drawing.Color.Green;
                        review.cleanliness = int.Parse(Request.QueryString["cr"]);
                        reviewproxy.UpdateReview(review);
                    }
                    foodRate = (int)review.quality_of_food;
                    serviceRate = (int)review.service;
                    parkingRate = (int)review.parkingfacility;
                    cleanlinessRate = int.Parse(Request.QueryString["cr"]);
                }
                else
                {
                    foodRate = (int)review.quality_of_food;
                    serviceRate = (int)review.service;
                    parkingRate = (int)review.parkingfacility;
                    cleanlinessRate = (int)review.cleanliness;
                }
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