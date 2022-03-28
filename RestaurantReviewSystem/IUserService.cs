using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.Runtime.Serialization;
using System.Data;

namespace RestaurantReviewSystem
{
    [ServiceContract]
    public interface IUserService
    {
        [OperationContract]
        DataSet GetUser();

        [OperationContract]
        User GetUserById(int id);

        [OperationContract]
        string AddUser(User user);

        [OperationContract]
        string DeleteUser(int id);
    }
}
