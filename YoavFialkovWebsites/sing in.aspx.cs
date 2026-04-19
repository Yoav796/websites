using System;
using System.Activities.Expressions;
using System.Collections.Generic;
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
                Response.Redirect("manager.aspx");
            }
            else { //1
                string sqlSelect =
                    "SELECT * FROM tUsers " +
                    "WHERE username= N' " + username + "' " +
                    "AND passward = N'" + password + "' ";

                bool userExist = MyAdoHelper.IsExist(sqlSelect);

                if (userExist)
                {
                    Session["username"] = "guest";
                    stResult = "gmail/password are wrong";
                }
                else
                {
                    stResult = "you are already a user";
                    Session["username"] = "userExists";
                    Response.Redirect("home page.aspx");
                }
            }  //1
        }
    }
}