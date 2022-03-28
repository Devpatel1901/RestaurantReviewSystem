using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    public class UserService:IUserService
    {
        public DataSet GetUser()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT Id,Username,Password FROM [User]", @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            DataSet ds = new DataSet();
            da.Fill(ds, "users");
            return ds;
        }

        public User GetUserById(int id)
        {
            SqlConnection cnn = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT Id,Username,Password FROM [User] WHERE id = @id";
            SqlParameter p = new SqlParameter("@id", id);
            cmd.Parameters.Add(p);
            cnn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            User user = new User();
            while(reader.Read())
            {
                user.UserID = reader.GetInt32(0);
                user.Username = reader.GetString(1);
                user.Password = reader.GetString(2);
            }
            reader.Close();
            cnn.Close();
            return user;
        }

        public string AddUser(User userInfo)
        {
            string Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into [User](Username,Password) values(@Username,@Password)", con);
            cmd.Parameters.AddWithValue("@UserName", userInfo.Username);
            cmd.Parameters.AddWithValue("@Password", userInfo.Password);
            int result = cmd.ExecuteNonQuery();
            if (result == 1)
            {
                Message = userInfo.Username + " Details inserted successfully";
            }
            else
            {
                Message = userInfo.Username + " Details not inserted successfully";
            }
            con.Close();
            return Message;
        }

        public string DeleteUser(int id)
        {
            string Message;
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=RestaurantReviewSystem;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from[User] where id=@id", con);
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
