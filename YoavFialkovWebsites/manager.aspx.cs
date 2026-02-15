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
        if (Page.IsPostBack)
        {
            string un = Request.Form["username"];
            string pw = Request.Form["password"];

            string sql = "SELECT * FROM tUsers WHERE " +
                "userName = N'" + un + "' AND " +
                "passward = N'" + pw + "'";
            ;

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";

            }
            else
            {
                st += "<table border = '1' >";
                st += "<tr>";
                st += "<td>username</td>";
                st += "<td>passward</td>";
                st += "<td>favotie sport</td>";
                st += "<td>favorite players</td>";
                st += "<td>age</td>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";

                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        st += "<td>" + dt.Rows[i][k] + "</td>";
                    }
                    st += "</tr>";
                }
                st += "</table>";

            }

        }
    }
}