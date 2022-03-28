using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    [ServiceContract]
    public interface IRestaurantService
    {
        [OperationContract]
        DataSet GetRestaurant();

        [OperationContract]
        Restaurant GetRestaurantById(int id);

        [OperationContract]
        string AddRestaurant(Restaurant restaurant);

        [OperationContract]
        string DeleteRestaurant(int id);

        [OperationContract]
        string UpdateRestaurant(Restaurant restaurant);
    }
}
