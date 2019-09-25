using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1
{
    public partial class skiing_incedent_report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    string User_Firstname = aspx_user_firstname.Text.ToString();
                    string User_Lastname = aspx_user_lastname.Text.ToString();
                    string User_Phonenumber = aspx_user_phonenumber.Text.ToString();
                    string Level_Insurance = aspx_insurance.Text.ToString();
                    int User_Fingers = Convert.ToInt32(aspx_fingers.Text);

                    confirmbox.InnerHtml = "Server-side Validation just happened! Your Summary is as follows: <br>";

                    confirmbox.InnerHtml += " First Name: " + User_Firstname + "<br>";
                    confirmbox.InnerHtml += " Last Name: " + User_Lastname + "<br>";
                    confirmbox.InnerHtml += " Phone number: " + User_Phonenumber + "<br>";

                    confirmbox.InnerHtml += " Your level of insurance: " + Level_Insurance.ToString() + "<br>";

                    if (User_Fingers == 0)
                    {
                        confirmbox.InnerHtml += "RESOLVED";
                    }

                    if (User_Fingers > 0 && User_Fingers <= 5)
                    {
                        confirmbox.InnerHtml += "Pending Investigation";
                    }

                    if (User_Fingers > 5 )
                    {
                        confirmbox.InnerHtml += "Requires Urgent Attention";
                    }
                }
            }

        }
    }
}