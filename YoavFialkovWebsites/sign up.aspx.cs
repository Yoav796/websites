using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    public string username;
    public string password;
    public string age;
    public string favoriteSport;
    public string favoritePlayer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            username = "username:" + Request.Form["username"];
            password = "password:" + Request.Form["password"];
            favoritePlayer = "favoritePlayer:" + Request.Form["favoritePlayer"];
            favoriteSport = "favoriteSport:" + Request.Form["favoriteSport"];
            age = "age:" + Request.Form["age"];

            string[] players = Request.Form.GetValues("favoritePlayer");
            if (players != null)
            {
                favoritePlayer = "favorite players: " + string.Join(", ", players);
            }
        }

    }
}