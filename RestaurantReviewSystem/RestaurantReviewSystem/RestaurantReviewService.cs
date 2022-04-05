using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    public class RestaurantReviewService : IRestaurantReviewService
    {
        public int AddReview(RestaurantReview review)
        {
            int Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [RestaurantReview](RestaurantId,UserId,parkingfacility,quality_of_food,service,cleanliness) values(@RestaurantId,@UserId,@parkingfacility,@quality_of_food,@service,@cleanliness)", con);
            cmd.Parameters.AddWithValue("@RestaurantId", review.RestaurantId);
            cmd.Parameters.AddWithValue("@UserId", review.UserId);
            cmd.Parameters.AddWithValue("@parkingfacility", review.parkingfacility);
            cmd.Parameters.AddWithValue("@quality_of_food", review.quality_of_food);
            cmd.Parameters.AddWithValue("@service", review.service);
            cmd.Parameters.AddWithValue("@cleanliness", review.cleanliness);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = 1;
            }
            else
            {
                Message = -1;
            }
            con.Close();
            return Message;
        }

        public int DeleteReviewByUserId(string id)
        {
            int Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from[RestaurantReview] where UserId=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = 1;
            }
            else
            {
                Message = -1;
            }
            con.Close();
            return Message;
        }

        public int DeleteReviewByUserIdandRestaurantId(string userid, int restaurantid)
        {
            int Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from[RestaurantReview] where UserId=@userid and RestaurantId=@restaurantid", con);
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@restaurantid", restaurantid);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = 1;
            }
            else
            {
                Message = -1;
            }
            con.Close();
            return Message;
        }

        public List<RestaurantReview> GetReviewByRestaurantId(int restaurantid)
        {
            List<RestaurantReview> list = new List<RestaurantReview>();
            SqlConnection cnn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT * FROM [RestaurantReview] WHERE RestaurantId = @id";
            SqlParameter p = new SqlParameter("@id", restaurantid);
            cmd.Parameters.Add(p);
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            //RestaurantReview restaurantreview = new RestaurantReview();
            while (reader.Read())
            {
                RestaurantReview restaurantreview = new RestaurantReview();
                restaurantreview.ReviewId = reader.GetInt32(0);
                restaurantreview.RestaurantId = reader.GetInt32(1);
                restaurantreview.UserId = reader.GetString(2);
                restaurantreview.parkingfacility = reader.GetDouble(3);
                restaurantreview.quality_of_food = reader.GetDouble(4);
                restaurantreview.service = reader.GetDouble(5);
                restaurantreview.cleanliness = reader.GetDouble(6);
                Console.WriteLine(restaurantreview);
                list.Add(restaurantreview);
            }
            reader.Close();
            cnn.Close();
            return list;
        }

        public RestaurantReview GetReviewByRestaurantIdandUserId(int restaurantid, string userid)
        {
            SqlConnection cnn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT * FROM [RestaurantReview] WHERE RestaurantId = @restaurantid and UserId = @userid";
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@restaurantid", restaurantid);
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            RestaurantReview restaurantreview = new RestaurantReview();
            while (reader.Read())
            {
                restaurantreview.ReviewId = reader.GetInt32(0);
                restaurantreview.RestaurantId = reader.GetInt32(1);
                restaurantreview.UserId = reader.GetString(2);
                restaurantreview.parkingfacility = reader.GetDouble(3);
                restaurantreview.quality_of_food = reader.GetDouble(4);
                restaurantreview.service = reader.GetDouble(5);
                restaurantreview.cleanliness = reader.GetDouble(6);
            }
            reader.Close();
            cnn.Close();
            return restaurantreview;
        }

        public List<RestaurantReview> GetReviewByUserId(string id)
        {
            List<RestaurantReview> list = new List<RestaurantReview>();
            SqlConnection cnn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT * FROM [RestaurantReview] WHERE UserId = @id";
            SqlParameter p = new SqlParameter("@id", id);
            cmd.Parameters.Add(p);
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                RestaurantReview restaurantreview = new RestaurantReview();
                restaurantreview.ReviewId = reader.GetInt32(0);
                restaurantreview.RestaurantId = reader.GetInt32(1);
                restaurantreview.UserId = reader.GetString(2);
                restaurantreview.parkingfacility = reader.GetDouble(3);
                restaurantreview.quality_of_food = reader.GetDouble(4);
                restaurantreview.service = reader.GetDouble(5);
                restaurantreview.cleanliness = reader.GetDouble(6);
                list.Add(restaurantreview);
            }
            reader.Close();
            cnn.Close();
            return list;
        }

        public int UpdateReview(RestaurantReview review)
        {
            int Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("update [RestaurantReview] set parkingfacility = @parkingfacility,quality_of_food = @quality_of_food,service=@service,cleanliness = @cleanliness where UserId = @userid and RestaurantId = @restaurantid", con);
            cmd.Parameters.AddWithValue("@parkingfacility", review.parkingfacility);
            cmd.Parameters.AddWithValue("@quality_of_food", review.quality_of_food);
            cmd.Parameters.AddWithValue("@service", review.service);
            cmd.Parameters.AddWithValue("@cleanliness", review.cleanliness);
            cmd.Parameters.AddWithValue("@userid", review.UserId);
            cmd.Parameters.AddWithValue("@restaurantid", review.RestaurantId);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = 1;
            }
            else
            {
                Message = 1;
            }
            con.Close();
            return Message;
        }
    }
}
