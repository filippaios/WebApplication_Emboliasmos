using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //δημιουργια αντικειμενου mp της κλασης main_page 
            //μετα καλειται η συναρτηση main_page_button για να ανοιξει η αντιστοιχη φορμα
            main_page mp = new main_page();
            mp.main_page_button(5);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            main_page mp = new main_page();
            mp.main_page_button(2);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            main_page mp = new main_page();
            mp.main_page_button(1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            main_page mp = new main_page();
            mp.main_page_button(4);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            main_page mp = new main_page();
            mp.main_page_button(6);
        }
    }
}