using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient.Restaurant
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Name.Text != "" && Email.Text != "" && Contact.Text != "" && City.Text != "" && Address.Text != "" && Cusine.Text != null && FileUpload1.FileName != "")
            {
                RestaurantServiceReference.Restaurant r = new RestaurantServiceReference.Restaurant();
                r.RestaurantName = Name.Text;
                r.EmailAddress = Email.Text;
                r.ContactNumber = long.Parse(Contact.Text);
                r.City = City.Text;
                r.Address = Address.Text;
                r.CusineCategory = Cusine.Text;
                r.ImageName = FileUpload1.FileName;

                Name.Text = " ";
                Email.Text = " ";
                Contact.Text = " ";
                City.Text = " ";
                Address.Text = " ";
                Cusine.Text = " ";

                RestaurantServiceReference.RestaurantServiceClient proxy = new RestaurantServiceReference.RestaurantServiceClient();
                string s = proxy.AddRestaurant(r);
                Label7.Text = s;


                string strFileName;
                string strFilePath;
                string strFolder;
                strFolder = Server.MapPath("../Content/Images/");
                strFileName = FileUpload1.FileName;
                strFileName = Path.GetFileName(strFileName);

                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }

                strFilePath = strFolder + strFileName;

                if (!File.Exists(strFilePath))
                {
                    FileUpload1.SaveAs(strFilePath);
                    //Label7.Text = strFileName + " has been successfully uploaded.";
                }
            }
            else
                Label7.Text = "All Fields are required !";
        }
    }
}