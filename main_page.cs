using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public class main_page
    {
        //δημιουργια συναρτησης η οποια ανοιγει τις φορμες αναλογα με το κουμπι που επιλεχθηκε
        public void main_page_button(int x)
        {
            if (x == 1)
            {
                HttpContext.Current.Response.Redirect("~/WebForm1.aspx");
            }
            if(x == 2)
            {
                HttpContext.Current.Response.Redirect("~/WebForm2.aspx");
            }
            if(x == 6)
            {
                HttpContext.Current.Response.Redirect("~/WebForm6.aspx");
            }
            if(x == 4)
            {
                HttpContext.Current.Response.Redirect("~/WebForm4.aspx");
            }
            if(x == 5)
            {
                HttpContext.Current.Response.Redirect("~/WebForm5.aspx");
            }
        }

    }
}