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

            if (username == "yoavi.fialkov@gmail.com" && password == "1234"){
                Session["username"] = "manager";
                Session["nihol"] = "ok";
                Response.Redirect("manager.aspx");
            }
            else { //1
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE username= N'" + username + "' " +
                    "AND passward = N'" + password + "' ";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                if (dt.Rows.Count == 0)
                {
                    Session["username"] = "guest";
                    stResult = "gmail/password are wrong";
                }
                else
                {
                    Session["user"] = "ok";
                    stResult = "you are already a user";
                    Session["username"] = dt.Rows[0]["username"];
                    Response.Redirect("home page.aspx");
                }
            }  //1
        }
    }
}