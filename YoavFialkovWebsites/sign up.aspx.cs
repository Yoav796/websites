using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public string st = "";

    public string username;
    public string password;
    public string age;
    public string favoriteSport;
    public string favoritePlayer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string username = "username:" + Request.Form["username"];
            string password = "password:" + Request.Form["password"];
            string favoritePlayer = "favoritePlayer:" + Request.Form["favoritePlayer"];
            string favoriteSport = "favoriteSport:" + Request.Form["favoriteSport"];
            string age = "age:" + Request.Form["age"];

            string sqlInsert =
                "INSERT INTO tUsers " +
                "VALUES (" +
                "N'" + username + "', " +
                "N'" + password + "', " +
                "n'" + favoriteSport + "', " +
                "n'" + favoritePlayer + "'" +
                "N" + age +

                ")";

            MyAdoHelper.DoQuery("myDB.mdf", sqlInsert);

            st = "Thank you for signing up!";


            string[] players = Request.Form.GetValues("favoritePlayer");
            if (players != null)
            {
                favoritePlayer = "favorite players: " + string.Join(", ", players);
            }
        }

    }
}