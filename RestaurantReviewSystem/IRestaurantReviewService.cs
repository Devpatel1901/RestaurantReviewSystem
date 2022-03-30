using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    [ServiceContract]
    public interface IRestaurantReviewService
    {
        [OperationContract]
        List<RestaurantReview> GetReviewByUserId(int id);

        [OperationContract]
        int AddReview(RestaurantReview review);

        [OperationContract]
        int UpdateReview(RestaurantReview review);

        [OperationContract]
        int DeleteReviewByUserId(int id);

        [OperationContract]
        int DeleteReviewByUserIdandRestaurantId(int userid,int restaurantid);

        [OperationContract]
        List<RestaurantReview> GetReviewByRestaurantId(int restaurantid);

        [OperationContract]
        RestaurantReview GetReviewByRestaurantIdandUserId(int restuarantid,int userid);
    }
}
