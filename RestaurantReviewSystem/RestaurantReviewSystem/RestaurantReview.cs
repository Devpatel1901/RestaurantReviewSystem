using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    [DataContract]
    public class RestaurantReview
    {
        [DataMember]
        public int ReviewId { get; set; }

        [DataMember]
        public int RestaurantId { get; set; }

        [DataMember]
        public string UserId { get; set; }

        [DataMember]
        public double parkingfacility { get; set; }

        [DataMember]
        public double quality_of_food { get; set; }

        [DataMember]
        public double service { get; set; }

        [DataMember]
        public double cleanliness { get; set; }
    }
}
