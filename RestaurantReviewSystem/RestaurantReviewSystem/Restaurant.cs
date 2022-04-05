using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace RestaurantReviewSystem
{
    [DataContract]
    public class Restaurant
    {
        [DataMember]
        public int RestaurantId { get; set; }

        [DataMember]
        public string RestaurantName { get; set; }

        [DataMember]
        public string EmailAddress { get; set; }

        [DataMember]
        public long ContactNumber { get; set; }

        [DataMember]
        public string City { get; set; }

        [DataMember]
        public string Address { get; set; }

        [DataMember]
        public string CusineCategory { get; set; }

        [DataMember]
        public string ImageName { get; set; }

    }
}
