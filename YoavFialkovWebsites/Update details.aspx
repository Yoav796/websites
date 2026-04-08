<%@ Page Title="עדכון פרטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update details.aspx.cs" Inherits="UpdateDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="direction: rtl; font-family: Arial; text-align: center;">
        <h1>הוספת נתוני שחקן</h1>
        
        <form runat="server" method="post">
            <div style="display: inline-block; text-align: right; border: 1px solid #ccc; padding: 20px; border-radius: 10px;">
                
                שם השחקן:<br />
                <input type="text" id="playerName" name="playerName" required /><br /><br />

                סוג ספורט:<br />
                <input type="text" id="sport" name="sport" required /><br /><br />

                תאריך:<br />
                <input type="text" id="articleDate" name="articleDate" placeholder="DD/MM/YYYY" required /><br /><br />

                גיל רלוונטי:<br />
                <select name="age" id="age" style="width: 100%;">
                    <option value="נוער">נוער</option>
                    <option value="בוגרים">בוגרים</option>
                    <option value="ותיקים">ותיקים</option>
                </select><br /><br />

                <input type="submit" id="submit1" value="שמור בבסיס נתונים" style="width: 100%; cursor: pointer;" />
            </div>
        </form>

        <div style="margin-top: 20px; font-weight: bold; color: blue;">
            <%=st %>
        </div>
    </div>
</asp:Content>