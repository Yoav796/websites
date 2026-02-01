using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
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
            username = Request.Form["username"];
            password = Request.Form["password"];
            favoriteSport = Request.Form["favoriteSport"];
            favoritePlayer = Request.Form["favoritePlayer"];
            age = Request.Form["age"];



            string sqlSelect =
                "SELECT * FROM tUsers " +
                "WHERE username= N'" + username + "' ";

            bool userExist = MyAdoHelper.IsExist(sqlSelect);

            if (userExist)
                st = "gmail exists";
            else

            {



                string sqlInsert =
                "INSERT INTO tUsers " +
                "values (N'" + username + "', " +
                "N'" + password + "', " +
                "N'" + favoriteSport + "', " +
                "N'" + favoritePlayer + "', " +
                "N'" + age + "')";

                MyAdoHelper.DoQuery("myDB.mdf", sqlInsert);

                st = "Thank you for signing up!";

            }
        }
    }
}