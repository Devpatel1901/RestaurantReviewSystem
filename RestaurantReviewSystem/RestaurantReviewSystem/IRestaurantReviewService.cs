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
        List<RestaurantReview> GetReviewByUserId(string id);

        [OperationContract]
        int AddReview(RestaurantReview review);

        [OperationContract]
        int UpdateReview(RestaurantReview review);

        [OperationContract]
        int DeleteReviewByUserId(string id);

        [OperationContract]
        int DeleteReviewByUserIdandRestaurantId(string userid, int restaurantid);

        [OperationContract]
        List<RestaurantReview> GetReviewByRestaurantId(int restaurantid);

        [OperationContract]
        RestaurantReview GetReviewByRestaurantIdandUserId(int restuarantid, string userid);
    }
}
