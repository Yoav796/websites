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
            // שליפת הנתונים מהטופס
            string pName = Request.Form["playerName"];
            string sport = Request.Form["sport"];
            string date = Request.Form["articleDate"];
            string age = Request.Form["age"];
            string freeText = Request.Form["freeText"]; 

            string sqlInsert = "INSERT INTO Seacrh (playerName, sport, [date], age, [freeText]) VALUES (" +
                "N'" + pName + "', " +
                "N'" + sport + "', " +
                "N'" + date + "', " +
                "N'" + age + "', " +
                "N'" + freeText + "')";

            MyAdoHelper.DoQuery("myDB.mdf", sqlInsert);

            Response.Redirect("complex search.aspx");

           
        }
    }
}