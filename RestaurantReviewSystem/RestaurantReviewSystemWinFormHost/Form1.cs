using RestaurantReviewSystem;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Description;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RestaurantReviewSystemWinFormHost
{
    public partial class Form1 : Form
    {
        ServiceHost sh = null;
        ServiceHost sh2 = null;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            /*
            sh = new ServiceHost(typeof(RestaurantService));
            sh.Open();
            label1.Text = "Service Running";
            */
            Uri httpa = new Uri("http://localhost:9000/RestaurantService");

            Uri[] arr = new Uri[] { httpa };

            sh = new ServiceHost(typeof(RestaurantService), arr);

            NetNamedPipeBinding namePipeb = new NetNamedPipeBinding();
            NetTcpBinding tcpb = new NetTcpBinding();
            WSHttpBinding httpb = new WSHttpBinding();

            ServiceMetadataBehavior mBehave = new ServiceMetadataBehavior();

            sh.Description.Behaviors.Add(mBehave);

            sh.AddServiceEndpoint(typeof(IMetadataExchange), MetadataExchangeBindings.CreateMexHttpBinding(), "mex");

            sh.AddServiceEndpoint(typeof(IRestaurantService), httpb, httpa);

            sh.Open();
            label1.Text = "Restaurant Service Running...";

            /////////////////////////////////////////////////////////////////////////////////////////////////////

            Uri httpa2 = new Uri("http://localhost:9000/RestaurantReviewService");

            Uri[] arr2 = new Uri[] { httpa2 };

            sh2 = new ServiceHost(typeof(RestaurantReviewService), arr2);

            NetNamedPipeBinding namePipeb2 = new NetNamedPipeBinding();
            NetTcpBinding tcpb2 = new NetTcpBinding();
            WSHttpBinding httpb2 = new WSHttpBinding();

            ServiceMetadataBehavior mBehave2 = new ServiceMetadataBehavior();

            sh2.Description.Behaviors.Add(mBehave2);

            sh2.AddServiceEndpoint(typeof(IMetadataExchange), MetadataExchangeBindings.CreateMexHttpBinding(), "mex");

            sh2.AddServiceEndpoint(typeof(IRestaurantReviewService), httpb2, httpa2);

            sh2.Open();
            label2.Text = "Restaurant Review Service Running...";
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            sh.Close();
            sh2.Close();
        }
    }
}
