using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    public class RestaurantService : IRestaurantService
    {
        public DataSet GetRestaurant()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [Restaurant]", @"Data Source=(localdb)\MSSQLLocalDB;
                                                    Initial Catalog=RestaurantReviewSystem1;
                                                    Integrated Security=True;
                                                    Connect Timeout=30;
                                                    Encrypt=False;
                                                    TrustServerCertificate=False;
                                                    ApplicationIntent=ReadWrite;
                                                    MultiSubnetFailover=False");
            DataSet ds = new DataSet();
            da.Fill(ds, "restuarants");
            return ds;
        }

        public Restaurant GetRestaurantById(int id)
        {
            SqlConnection cnn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;
                                                    Initial Catalog=RestaurantReviewSystem1;
                                                    Integrated Security=True;
                                                    Connect Timeout=30;
                                                    Encrypt=False;
                                                    TrustServerCertificate=False;
                                                    ApplicationIntent=ReadWrite;
                                                    MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT * FROM [Restaurant] WHERE id = @id";
            SqlParameter p = new SqlParameter("@id", id);
            cmd.Parameters.Add(p);
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            Restaurant restaurant = new Restaurant();
            while (reader.Read())
            {
                restaurant.RestaurantId = reader.GetInt32(0);
                restaurant.RestaurantName = reader.GetString(1);
                restaurant.EmailAddress = reader.GetString(2);
                restaurant.ContactNumber = Convert.ToInt64(reader.GetInt64(3));
                restaurant.City = reader.GetString(4);
                restaurant.Address = reader.GetString(5);
                restaurant.CusineCategory = reader.GetString(6);
                restaurant.ImageName = reader.GetString(7);
            }
            reader.Close();
            cnn.Close();
            return restaurant;
        }

        public string AddRestaurant(Restaurant restaurantInfo)
        {
            string Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [Restaurant](RestaurantName,EmailAddress,ContactNumber,City,Address,CusineCategory,ImageName) values(@RestaurantName,@EmailAddress,@ContactNumber,@City,@Address,@CusineCategory,@ImageName)", con);
            cmd.Parameters.AddWithValue("@RestaurantName", restaurantInfo.RestaurantName);
            cmd.Parameters.AddWithValue("@EmailAddress", restaurantInfo.EmailAddress);
            cmd.Parameters.AddWithValue("@ContactNumber", restaurantInfo.ContactNumber);
            cmd.Parameters.AddWithValue("@City", restaurantInfo.City);
            cmd.Parameters.AddWithValue("@Address", restaurantInfo.Address);
            cmd.Parameters.AddWithValue("@CusineCategory", restaurantInfo.CusineCategory);
            cmd.Parameters.AddWithValue("@ImageName", restaurantInfo.ImageName);

            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = restaurantInfo.RestaurantName + " Details inserted successfully";
            }
            else
            {
                Message = restaurantInfo.RestaurantName + " Details not inserted successfully";
            }
            con.Close();
            return Message;
        }

        public string UpdateRestaurant(Restaurant restaurantInfo)
        {
            string Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("update [Restaurant] set RestaurantName = @RestaurantName,EmailAddress = @EmailAddress,ContactNumber = @ContactNumber,City = @City,Address = @Address, CusineCategory = @CusineCategory, ImageName=@ImageName where id = @id", con);
            cmd.Parameters.AddWithValue("@RestaurantName", restaurantInfo.RestaurantName);
            cmd.Parameters.AddWithValue("@EmailAddress", restaurantInfo.EmailAddress);
            cmd.Parameters.AddWithValue("@ContactNumber", restaurantInfo.ContactNumber);
            cmd.Parameters.AddWithValue("@City", restaurantInfo.City);
            cmd.Parameters.AddWithValue("@Address", restaurantInfo.Address);
            cmd.Parameters.AddWithValue("@CusineCategory", restaurantInfo.CusineCategory);
            cmd.Parameters.AddWithValue("@ImageName", restaurantInfo.ImageName);
            cmd.Parameters.AddWithValue("@id", restaurantInfo.RestaurantId);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = restaurantInfo.RestaurantName + " Details updated successfully";
            }
            else
            {
                Message = restaurantInfo.RestaurantName + " Details not updated successfully";
            }
            con.Close();
            return Message;
        }

        public string DeleteRestaurant(int id)
        {
            string Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from[Restaurant] where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = "Record " + id + " deleted successfully";
            }
            else
            {
                Message = "Record " + id + " not deleted successfully";
            }
            con.Close();
            return Message;
        }
    }
}
