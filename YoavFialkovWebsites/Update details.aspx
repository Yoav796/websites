<%@ Page Title="עדכון פרטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update details.aspx.cs" Inherits="UpdateDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            // איפוס הודעות שגיאה
            document.getElementById("playerNameError").innerHTML = "";
            document.getElementById("articleDateError").innerHTML = "";
            document.getElementById("freeTextError").innerHTML = "";

            let isValid = true;

            // 1. בדיקת שם שחקן - מעל אות אחת
            let pName = document.getElementById("playerName").value;
            if (pName.trim().length <= 1) {
                document.getElementById("playerNameError").innerHTML = "שם השחקן חייב להכיל יותר מאות אחת.";
                isValid = false;
            }

            // 2. בדיקת תאריך - רק מספרים וסלאשים (למשל: 24/05/2026)
            let dateVal = document.getElementById("articleDate").value;
            // ביטוי רגולרי שבודק שמדובר רק במספרים ובסימן /
            let datePattern = /^[0-9/]+$/;
            if (!datePattern.test(dateVal)) {
                document.getElementById("articleDateError").innerHTML = "התאריך חייב להכיל מספרים ותווים חוקיים בלבד (לדוגמה: DD/MM/YYYY).";
                isValid = false;
            }

            // 3. בדיקת תוכן הכתבה - מעל 20 תווים
            let freeTextVal = document.getElementById("freeText").value;
            if (freeTextVal.trim().length <= 20) {
                document.getElementById("freeTextError").innerHTML = "תוכן הכתבה חייב להכיל מעל 20 אותיות.";
                isValid = false;
            }

            return isValid;
        }
    </script>
    <style>
        .error { color: red; font-size: 13px; display: block; margin-top: 5px; margin-bottom: 10px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="direction: rtl; font-family: Arial; text-align: center;">
        <h1>הוספת נתוני שחקן וכתבה</h1>
        
        <form runat="server" method="post" onsubmit="return checkAll();">
            <div style="display: inline-block; text-align: right; border: 1px solid #ccc; padding: 20px; border-radius: 10px; width: 350px;">
                
                שם השחקן:<br />
                <input type="text" id="playerName" name="playerName" required style="width: 100%;" /><br />
                <span class="error" id="playerNameError"></span>

                סוג ספורט:<br />
                <input type="text" id="sport" name="sport" required style="width: 100%;" /><br />
                <span class="error" id="sportError"></span>

                תאריך:<br />
                <input type="text" id="articleDate" name="articleDate" placeholder="DD/MM/YYYY" required style="width: 100%;" /><br />
                <span class="error" id="articleDateError"></span>

                גיל רלוונטי:<br />
                <select name="age" id="age" style="width: 104%;">
                    <option value="נוער">נוער</option>
                    <option value="בוגרים">בוגרים</option>
                    <option value="ותיקים">ותיקים</option>
                </select><br /><br />

                תוכן הכתבה (חופשי):<br />
                <textarea id="freeText" name="freeText" rows="6" required style="width: 100%; resize: vertical;" placeholder="כתוב כאן את תוכן הכתבה (מינימום 20 תווים)..."></textarea><br />
                <span class="error" id="freeTextError"></span>

                <input type="submit" id="submit1" value="שמור בבסיס נתונים" style="width: 104%; cursor: pointer; font-weight: bold; padding: 5px;" />
            </div>
        </form>

        <div style="margin-top: 20px; font-weight: bold; color: blue;">
            <%=st %>
        </div>
    </div>
</asp:Content>