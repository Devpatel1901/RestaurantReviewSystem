using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestaurantReviewSystem_WebClient
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("formyprojects77@gmail.com");
                message.To.Add(new MailAddress(DropDownList1.SelectedValue));
                message.Subject = "Message From "+TextBox2.Text+" for RestaurantReviewSystem !";
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = "Name : "+TextBox1.Text+"<br/>Email : "+TextBox2.Text+"<br/>Message : "+TextBox3.Text;
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("formyprojects77@gmail.com", "Projects@123");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);

                Label1.Text = "Message Send Successfully to the developer.";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception) 
            {
                Label1.Text = "Error ! While Message Send to the developer.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}