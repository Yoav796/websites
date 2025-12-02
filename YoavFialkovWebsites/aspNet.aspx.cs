using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx : System.Web.UI.Page
{
    public string strkefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        strkefel = "<table border='1' width = '80%' ; height = '500px'>";
        for (int i = 1; i <= 10; i++)
        {
            strkefel += "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                strkefel += "<td>";
                strkefel += i * j;
                strkefel += "</td>";
            } 
            strkefel += "</tr>";
        }
        strkefel += "</table>";

    }
}