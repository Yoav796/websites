using System;
using System.Collections.Generic;
using System.Data; 
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string search = Request.Form["searchName"];

        // הגדרת שאילתת SQL ראשונית: שליפת כל העמודות והשורות מטבלת המשתמשים שנקראת tUsers
        string sql = "SELECT * FROM tUsers";

        // בדיקה: אם המנהל אכן רשם משהו בשדה החיפוש (המחרוזת לא ריקה ולא שווה ל-null)
        if (!string.IsNullOrEmpty(search))
        {
            // עדכון השאילתה כך שתסנן ותציג רק משתמשים שהשם שלהם (userName) מכיל את מילת החיפוש
            // ה-N מאפשר תמיכה מלאה ותקינה באותיות בעברית במסד הנתונים
            sql = "SELECT * FROM tUsers WHERE userName LIKE N'%" + search + "%'";
        }

        // הרצת שאילתת ה-SQL מול מסד הנתונים בעזרת מחלקת עזר, ושמירת התוצאה בטבלה זמנית בזיכרון (dt)
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        // בדיקה: אם הטבלה ריקה או שלא חזרו שורות (אין אף משתמש כזה במערכת)
        if (dt == null || dt.Rows.Count == 0)
        {
            // יצירת הודעת אזהרה מעוצבת באדום
            st = "<h3 style='color:red;'>לא נמצאו משתמשים</h3>";
        }
        else // אם נמצאו משתמשים במסד הנתונים
        {
            // פתיחת תגית טבלה ב-HTML עם מסגרת (border=1), כיוון מימין לשמאל ורוחב של 80% מהמסך
            st += "<table border='1' style='direction:rtl; text-align:center; width:80%;'>";

            // יצירת שורת הכותרת הראשונה של הטבלה (th) עם רקע אפור בהיר
            st += "<tr style='background-color: #f2f2f2;'>";
            st += "<th>שם משתמש</th><th>סיסמה</th><th>ספורט מועדף</th><th>משחק מועדף</th><th>גיל</th>";
            st += "</tr>";

            // לולאה חיצונית: רצה ועוברת שורה אחרי שורה על כל המשתמשים שנמצאו (dt.Rows)
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>"; // פתיחת שורת HTML חדשה עבור המשתמש הנוכחי

                // לולאה פנימית: רצה ועוברת עמודה אחר עמודה בתוך השורה של המשתמש הנוכחי (dt.Columns)
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    // שליפת הערך שנמצא בדיוק בהצטלבות של שורה i ועמודה k, והכנסתו לתוך תא בטבלה (td) עם מרווח פנימי
                    st += "<td style='padding:8px;'>" + dt.Rows[i][k] + "</td>";
                }

                st += "</tr>"; // סגירת שורת המשתמש הנוכחי
            }

            st += "</table>"; // סגירת תגית הטבלה הראשית לאחר שסיימנו להכניס את כל המידע
        }
    }
}