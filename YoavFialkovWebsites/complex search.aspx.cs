using System;
using System.Data; 

public partial class ComplexSearch : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // משיכת הטקסט שהמשתמש הקליד בתיבת החיפוש -name של התיבה
        string search = Request.Form["searchName"];

        // הגדרת שאילתת ברירת מחדל שמביאה את כל השורות מטבלת החיפוש במסד הנתונים
        string sql = "SELECT * FROM Seacrh";

        // בדיקה: אם המשתמש אכן הקליד משהו בתיבת החיפוש (כלומר המשתנה לא ריק)
        if (!string.IsNullOrEmpty(search))
        {
            // עדכון השאילתה כך שתסנן רק שחקנים ששמם מכיל את הטקסט שהוקלד (בזכות ה-LIKE וה-%)
            // ה-N מיועד לתמיכה נכונה בטקסט בעברית (Unicode)
            sql = "SELECT * FROM Seacrh WHERE playerName LIKE N'%" + search + "%'";
        }

        // שליחת השאילתה למסד הנתונים באמצעות מחלקת עזר, ושמירת התוצאות בתוך טבלה וירטואלית בזיכרון (DataTable)
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        // בדיקה: אם לא חזרו נתונים בכלל, או שהטבלה שהתקבלה ריקה לחלוטין
        if (dt == null || dt.Rows.Count == 0)
        {
            // יצירת הודעת שגיאה בצבע אדום שתודפס למשתמש
            st = "<h3 style='color:red;'>לא נמצאו נתונים</h3>";
        }
        else // אם נמצאו שורות במסד הנתונים
        {
            // פתיחת תגית טבלה ב-HTML עם הגדרות עיצוב (רוחב 80%, יישור למרכז וכיוון מימין לשמאל)
            st += "<table border='1' style='direction:rtl; text-align:center; width:80%;'>";

            // יצירת שורת הכותרות (Header) של הטבלה עם רקע אפרפר
            st += "<tr style='background-color: #f2f2f2;'>";
            st += "<th>ID</th><th>שם שחקן</th><th>ספורט</th><th>תאריך</th><th>גיל</th><th>טקסט חופשי</th>";
            st += "</tr>";

            // לולאה חיצונית: עוברת שורה-שורה על כל השורות שחזרו ממסד הנתונים
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>"; // פתיחת שורה חדשה בטבלה עבור השחקן הנוכחי

                // לולאה פנימית: עוברת עמודה-עמודה בתוך השורה הנוכחית כדי למשוך את הערכים
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    // הוספת תא (td) עם הנתון הספציפי שנמצא בשורה i ובעמודה k, בתוספת מרווח פנימי (padding)
                    st += "<td style='padding:8px;'>" + dt.Rows[i][k] + "</td>";
                }

                st += "</tr>"; // סגירת השורה של השחקן הנוכחי
            }

            st += "</table>"; // סגירת תגית הטבלה לאחר שכל השורות והעמודות הוכנסו
        }
    }
}