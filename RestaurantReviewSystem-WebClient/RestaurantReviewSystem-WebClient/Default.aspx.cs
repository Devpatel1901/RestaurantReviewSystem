using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient
{
    public partial class _Default : Page
    {
        public List<RestaurantServiceReference.Restaurant> l = new List<RestaurantServiceReference.Restaurant>();
        public int id=0;
        public string path = "./Content/Images/";
        public List<string> avg_food_review = new List<string>();
        public List<string> avg_service_review = new List<string>();
        public List<string> avg_parking_review = new List<string>();
        public List<string> avg_cleanliness_review = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Message"] != null)
            {
                Message.Text = Session["Message"].ToString();
                Session["Message"] = "";
            }

            RestaurantServiceReference.RestaurantServiceClient proxy = new RestaurantServiceReference.RestaurantServiceClient();

            if (Request.QueryString["id"] != "" && Request.QueryString["id"] != null)
            {
                RestaurantServiceReference.Restaurant r = proxy.GetRestaurantById(int.Parse(Request.QueryString["id"]));
                if (r.RestaurantId != 0)
                {
                    l.Add(r);

                    RestaurantReviewServiceReference.RestaurantReviewServiceClient reviewProxy = new RestaurantReviewServiceReference.RestaurantReviewServiceClient();
                    RestaurantReviewServiceReference.RestaurantReview[] l2 = reviewProxy.GetReviewByRestaurantId(int.Parse(Request.QueryString["id"]));

                    double sum1 = 0;
                    double sum2 = 0;
                    double sum3 = 0;
                    double sum4 = 0;

                    for (int i = 0; i < l2.Length; i++)
                    {
                        sum1 = sum1 + l2[i].quality_of_food;
                        sum2 = sum2 + l2[i].service;
                        sum3 = sum3 + l2[i].parkingfacility;
                        sum4 = sum4 + l2[i].cleanliness;

                    }

                    int total = 0;
                    SqlDataAdapter da1 = new SqlDataAdapter("SELECT * FROM [AspNetUsers]", @"Data Source=(LocalDb)\MSSQLLocalDB;
                                            AttachDbFilename=|DataDirectory|\aspnet-RestaurantReviewSystem-WebClient-20220328045730.mdf;
                                            Initial Catalog=aspnet-RestaurantReviewSystem-WebClient-20220328045730;
                                            Integrated Security=True");
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1, "users");
                    DataTable mydatatable2 = ds1.Tables[0];
                    total = mydatatable2.Rows.Count;

                    total *= 10;    //multiplication with 10 because max rating user can give is 10

                    avg_food_review.Add(Math.Round(((sum1 / total) * 100), 2).ToString());
                    avg_service_review.Add(Math.Round(((sum2 / total) * 100), 2).ToString());
                    avg_parking_review.Add(Math.Round(((sum3 / total) * 100), 2).ToString());
                    avg_cleanliness_review.Add(Math.Round(((sum4 / total) * 100), 2).ToString());
                }
                else
                {
                    Session["Message"] = "Record Not Found !";
                    Response.Redirect("~/");
                }
            }
            else
            {

                DataSet ds = proxy.GetRestaurant();
                DataTable mydatatable = ds.Tables[0];
                DataRow temprow = null;

                foreach (DataRow data_variable in mydatatable.Rows)
                {
                    temprow = data_variable;
                    RestaurantServiceReference.Restaurant r = new RestaurantServiceReference.Restaurant();
                    r.RestaurantId = (int)temprow["id"];
                    r.RestaurantName = (string)temprow["RestaurantName"];
                    r.EmailAddress = (string)temprow["EmailAddress"];
                    r.ContactNumber = (long)temprow["ContactNumber"];
                    r.City = (string)temprow["City"];
                    r.CusineCategory = (string)temprow["CusineCategory"];
                    r.ImageName = (string)temprow["ImageName"];
                    l.Add(r);

                    RestaurantReviewServiceReference.RestaurantReviewServiceClient reviewProxy = new RestaurantReviewServiceReference.RestaurantReviewServiceClient();
                    RestaurantReviewServiceReference.RestaurantReview []l2= reviewProxy.GetReviewByRestaurantId((int)temprow["id"]);

                    double sum1 = 0;
                    double sum2 = 0;
                    double sum3 = 0;
                    double sum4 = 0;

                    for (int i=0;i<l2.Length;i++)
                    {
                        sum1 = sum1 + l2[i].quality_of_food;
                        sum2 = sum2 + l2[i].service;
                        sum3 = sum3 + l2[i].parkingfacility;
                        sum4 = sum4 + l2[i].cleanliness;

                    }

                    int total = 0;
                    SqlDataAdapter da1 = new SqlDataAdapter("SELECT * FROM [AspNetUsers]", @"Data Source=(LocalDb)\MSSQLLocalDB;
                                            AttachDbFilename=|DataDirectory|\aspnet-RestaurantReviewSystem-WebClient-20220328045730.mdf;
                                            Initial Catalog=aspnet-RestaurantReviewSystem-WebClient-20220328045730;
                                            Integrated Security=True");
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1, "users");
                    DataTable mydatatable2 = ds1.Tables[0];
                    total = mydatatable2.Rows.Count;

                    total *= 10;    //multiplication with 10 because max rating user can give is 10

                    avg_food_review.Add(Math.Round(((sum1 / total)*100),2).ToString());
                    avg_service_review.Add(Math.Round(((sum2 / total) * 100),2).ToString());
                    avg_parking_review.Add(Math.Round(((sum3 / total) * 100),2).ToString());
                    avg_cleanliness_review.Add(Math.Round(((sum4 / total) * 100),2).ToString());

                }


            }
            id = 0;
            proxy.Close();

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect(string.Concat("~/Restaurant/View?id=",Label1.Text));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Restaurant/CustomerView?id=" + id.ToString());
        }
    }
}