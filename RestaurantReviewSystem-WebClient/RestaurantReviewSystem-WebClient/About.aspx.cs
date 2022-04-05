using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RestaurantServiceReference.RestaurantServiceClient proxy = new RestaurantServiceReference.RestaurantServiceClient("WSHttpBinding_IRestaurantService");
            //DataSet ds = proxy.GetRestaurant();
            //DataTable myDataTable = ds.Tables[0];
            //DataRow tempRow = null;

            //foreach (DataRow tempRow_Variable in myDataTable.Rows)
            //{
            //    tempRow = tempRow_Variable;
            //    ListBox1.Items.Add((tempRow["id"] + " " +
            //                        tempRow["RestaurantName"] + " " +
            //                        tempRow["EmailAddress"] + " " +
            //                        tempRow["ContactNumber"] + " " +
            //                        tempRow["City"] + " " +
            //                        tempRow["CusineCategory"]));
            //}
            //proxy.Close();
        }
    }
}