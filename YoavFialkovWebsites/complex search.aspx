<%@ Page Title="חיפוש מורכב" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="complex search.aspx.cs" Inherits="ComplexSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="direction: rtl; text-align: center; font-family: Arial;">
        <h1>חיפוש שחקנים</h1>

        <form runat="server" method="post">
            חפש שם שחקן: 
            <input type="text" name="searchName" />
            <input type="submit" value="חפש" />
        </form>

        <br /><hr /><br />

        <div style="display: flex; justify-content: center;">
            <%=st %>
        </div>
    </div>
</asp:Content>