using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
     
 
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //path ειναι το connection string
            string path = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\gfilippaios\source\repos\WebApplication2\database\database\ides5.mdb";
           //εδω γινεται η εντολη της sql 
            string query = "insert into Table1 (Αμκα, Όνομα, Επίθετο, Email, Τηλέφωνο, Φύλο, Ηλικία, Διεύθυνση_κατοικίας, Ημερομηνία_ώρα, Υποκείμενα_νοσήματα) values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + TextBox11.Text.ToString() + "','" + TextBox7.Text.ToString() + "','" + TextBox8.Text.ToString() + "','" + TextBox9.Text.ToString() + "','" + TextBox10.Text.ToString() + "') ";
            //δημιουργια αντικειμενου newinstert της κλασης Connectdatabase
            Connectdatabase newinstert = new Connectdatabase();
            //καλειται η συναρτηση instertintodatabase η οποια στελνει το path και το query
            int x = newinstert.instertintodatabase(path, query);
           //οταν το αποτελεσμα της συναρτησης ειναι 1 βγαζει μηνυμα επιτυχιας καταγραφης
            if (x == 1)
            {
                Label2.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = " Μη επιτυχη καταχώρηση";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {              
                Response.Redirect("~/WebForm3.aspx");               
        }

        
    }
}