using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient.Restaurant
{
    public partial class AdminView : System.Web.UI.Page
    {
        public int id = 0;
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

                if (!IsPostBack)
                {
                    UName.Text = r.RestaurantName;
                    UEmail.Text = r.EmailAddress;
                    UContact.Text = r.ContactNumber.ToString();
                    UCity.Text = r.City;
                    UAddress.Text = r.Address;
                    UCusine.Text = r.CusineCategory;
                    ULabel16.Text = "File in Use is :- " + r.ImageName;
                }
            }
            else
                Response.Redirect("~/");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            RestaurantServiceReference.RestaurantServiceClient proxy = new RestaurantServiceReference.RestaurantServiceClient();

            RestaurantServiceReference.Restaurant r = new RestaurantServiceReference.Restaurant();
            r = proxy.GetRestaurantById(id);
            File.Delete(Server.MapPath("../Content/Images/") + r.ImageName);

            string s = proxy.DeleteRestaurant(id);

            Session["Message"] = s;
            Response.Redirect("~/");
        }

        protected void update_Click1(object sender, EventArgs e)
        {
            if (UName.Text != "" && UEmail.Text != "" && UContact.Text != "" && UCity.Text != "" && UAddress.Text != "" && UCusine.Text != null)
            {
                RestaurantServiceReference.Restaurant rupdate = new RestaurantServiceReference.Restaurant();
                RestaurantServiceReference.RestaurantServiceClient rc = new RestaurantServiceReference.RestaurantServiceClient();

                rupdate.RestaurantId = id;
                rupdate.RestaurantName = UName.Text;
                rupdate.EmailAddress = UEmail.Text;
                rupdate.ContactNumber = long.Parse(UContact.Text);
                rupdate.City = UCity.Text;
                rupdate.Address = UAddress.Text;
                rupdate.CusineCategory = UCusine.Text;

                string strFileName;
                string strFilePath;
                string strFolder;
                strFolder = Server.MapPath("../Content/Images/");
                strFileName = FileUpload1.FileName;
                strFileName = Path.GetFileName(strFileName);

                strFilePath = strFolder + strFileName;

                if (FileUpload1.HasFile)
                {
                    RestaurantServiceReference.Restaurant r = new RestaurantServiceReference.Restaurant();
                    r = rc.GetRestaurantById(id);
                    File.Delete(Server.MapPath("../Content/Images/") + r.ImageName);

                    rupdate.ImageName = FileUpload1.FileName;
                    FileUpload1.SaveAs(strFilePath);
                }
                else
                {
                    RestaurantServiceReference.Restaurant r = new RestaurantServiceReference.Restaurant();
                    r = rc.GetRestaurantById(id);
                    rupdate.ImageName = r.ImageName;
                }


                string s = rc.UpdateRestaurant(rupdate);

                Session["Message"] = s;
                Response.Redirect("~/");
            }
            else
            {
                Session["Message"] = "Record " + id + " Not Updated. All Field are required !";
                Response.Redirect("~/");
            }
        }
    }
}