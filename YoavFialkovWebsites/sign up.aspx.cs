using System;
using System.Collections.Generic;
using System.Linq;
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

            //הסימני שאלה עושים שאם המשתמש לא בחר כלום זה יכתוב
            favoriteSport = Request.Form["favoriteSport"] ?? "Not Selected";
            favoritePlayer = Request.Form["favoritePlayer"] ?? "Not Selected";
            age = Request.Form["age"];

            string sqlSelect = "SELECT * FROM tUsers WHERE username = N'" + username + "'";

            bool userExist = MyAdoHelper.IsExist(sqlSelect);

            //בדיקה אם השם משתמש קיים כבר
            if (userExist)
            {
                st = "Username already exists!";
            }
            else
            {
                // אם שם המשתמש פנוי, נבנה שאילתת INSERT להוספת המשתמש החדש לטבלה tUsers
                string sqlInsert = "INSERT INTO tUsers VALUES (" +
                   "N'" + username + "', " +
                   "N'" + password + "', " +
                   "N'" + favoriteSport + "', " +
                   "N'" + favoritePlayer + "', " +
                   "N'" + age + "')";

                MyAdoHelper.DoQuery("myDB.mdf", sqlInsert);

                // השורה החדשה שהוספנו: העברה אוטומטית וישירה לדף הכניסה שלך!
                // שים לב שהשתמשתי בשם הקובץ המדויק כפי שהעלית "sing in.aspx"
                Response.Redirect("sing in.aspx");
            }
        }
    }
}