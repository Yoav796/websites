<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="log out.aspx.cs" Inherits="log_out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%Session.Abandon();
        Session["username"] = "guest";
        Response.Redirect("home page.aspx");
           %>
</asp:Content>

