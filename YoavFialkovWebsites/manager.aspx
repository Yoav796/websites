<%@ Page Title="ניהול משתמשים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="direction: rtl; text-align: center; font-family: Arial;">
        <h1>ניהול משתמשים</h1>

        <form runat="server" method="post">
            חפש שם משתמש: 
            <input type="text" name="searchName" placeholder="הקלד שם לחיפוש..." />
            <input id="submit1" type="submit" value="חפש" />
        </form>

        <br /><hr /><br />

        <div style="display: flex; justify-content: center;">
            <%=st %>
        </div>
    </div>
</asp:Content>