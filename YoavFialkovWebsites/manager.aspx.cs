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

        string sql = "SELECT * FROM tUsers";

        if (!string.IsNullOrEmpty(search))
        {
            
            sql = "SELECT * FROM tUsers WHERE userName LIKE N'%" + search + "%'";
        }

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt == null || dt.Rows.Count == 0)
        {
            st = "<h3 style='color:red;'>לא נמצאו משתמשים</h3>";
        }
        else 
        {
            st += "<table border='1' style='direction:rtl; text-align:center; width:80%;'>";
            st += "<tr style='background-color: #f2f2f2;'>";
            st += "<th>שם משתמש</th><th>סיסמה</th><th>ספורט מועדף</th><th>משחק מועדף</th><th>גיל</th>";
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