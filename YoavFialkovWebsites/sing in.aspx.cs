using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            if (username == "yoavi.fialkov@gmail.com" && password == "1234")
            {
                // שמירת נתוני המנהל בסשן (Session) כדי שהאתר יזכור שהוא מנהל בדפים הבאים
                Session["username"] = "manager";
                Session["nihol"] = "ok";
                // העברה אוטומטית של המנהל לדף הניהול המיוחד
                Response.Redirect("manager.aspx");
            }
            else
            { 

                // בניית שאילתת SQL המחפשת משתמש עם השם והסיסמה המדויקים שהוקלדו
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE username= N'" + username + "' " +
                    "AND passward = N'" + password + "' ";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                // אם הטבלה חזרה ריקה, סימן שלא נמצא אף משתמש עם פרטים כאלו
                if (dt.Rows.Count == 0)
                {
                    // הגדרת המשתמש בסשן כאורח בלבד
                    Session["username"] = "guest";
                    // עדכון הודעת שגיאה שתופיע על המסך
                    stResult = "gmail/password are wrong";
                }
                else
                {
                    // אם נמצאה שורה בטבלה, הפרטים נכונים והמשתמש קיים
                    Session["user"] = "ok";
                    stResult = "you are already a user";
                    // שמירת שם המשתמש האמיתי מתוך מסד הנתונים (מהשורה הראשונה שחזרה) אל ה-Session
                    Session["username"] = dt.Rows[0]["username"];
                    // הפניית המשתמש המחובר ישירות לדף הבית של האתר
                    Response.Redirect("home page.aspx");
                }
            }
        }
    }
}