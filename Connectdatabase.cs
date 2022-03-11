using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication2
{
    public class Connectdatabase
    {
        public int instertintodatabase(string path, string query)
        {
            // δημιουργείται ενα αντικείμενο con με το path της διεύθυνσής της βάσης
            OleDbConnection con = new OleDbConnection(path);
            //ανοιγμά σύνδεση με την βάση
            con.Open();
            // δημιουργία ενος αντικειμένου cmd (μπορεί να τρέχει εντολές στο command line)
            OleDbCommand cmd = con.CreateCommand();
            //ορίζεις ότι η είσοδος του cmd θα είναι text
            cmd.CommandType = System.Data.CommandType.Text;
            // δημιουργειτε το  text που θέλουμε να εκτελέσουμε 
            cmd.CommandText = query;
            // ότι εντολή γράφτηκε παραπάνω κάνε ερώτημα στην βάση (εδω αποθηκευεται το 1 οταν εχει πετυχει η καταγραφη)
            int x = cmd.ExecuteNonQuery();
            //κλείνουμε τη σύνδεση με την βάση 
            con.Close();
            //εμφανίζεται μήνυμα οτι έγινε η καταγραφή
            return x;
        }
    }
}