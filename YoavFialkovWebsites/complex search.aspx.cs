using System;
using System.Data;

public partial class ComplexSearch : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        string search = Request.Form["searchName"];

        string sql = "SELECT * FROM Seacrh";
        if (!string.IsNullOrEmpty(search))
        {
            sql = "SELECT * FROM Seacrh WHERE playerName LIKE N'%" + search + "%'";
        }

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt == null || dt.Rows.Count == 0)
        {
            st = "<h3 style='color:red;'>לא נמצאו נתונים</h3>";
        }
        else
        {
            st += "<table border='1' style='direction:rtl; text-align:center; width:80%;'>";
            st += "<tr style='background-color: #f2f2f2;'>";
            st += "<th>ID</th><th>שם שחקן</th><th>ספורט</th><th>תאריך</th><th>גיל</th><th>טקסט חופשי</th>";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td style='padding:8px;'>" + dt.Rows[i][k] + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}