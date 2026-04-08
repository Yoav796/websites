using System;
using System.Web;
using System.Web.UI;

public partial class UpdateDetails : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            // קליטת הנתונים מהטופס
            string pName = Request.Form["playerName"];
            string sport = Request.Form["sport"];
            string date = Request.Form["articleDate"];
            string age = Request.Form["age"];

            // בניית השאילתה - השמותplayerName, sport, date, age חייבים להתאים לטבלה Seacrh
            string sqlInsert = "INSERT INTO Seacrh (playerName, sport, [date], age) VALUES (" +
                "N'" + pName + "'," +
                "N'" + sport + "'," +
                "N'" + date + "'," +
                "N'" + age + "'" +
                ")";

            try
            {
                // הרצת השאילתה מול הקובץ myDB.mdf
                MyAdoHelper.DoQuery("myDB.mdf", sqlInsert);
                st = "DONE";
            }
            catch (Exception ex)
            {
                st = "Error: " + ex.Message;
            }
        }
    }
}