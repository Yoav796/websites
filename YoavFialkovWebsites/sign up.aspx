<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            // איפוס הודעות השגיאה הקודמות כדי שלא יוצגו סתם לגולש
            document.getElementById("usernameError").innerHTML = "";
            document.getElementById("passwordError").innerHTML = "";
            document.getElementById("favoriteSportError").innerHTML = "";
            document.getElementById("favoritePlayerError").innerHTML = "";

            let isValid = true;

            // הפעלת בדיקות התקינות לשם המשתמש ולסיסמה, ועדכון המשתנה בהתאם
            isValid = checkUserName() && isValid;
            isValid = checkPassword() && isValid;

            // מחזיר true אם הכל תקין ומאפשר לטופס להישלח לשרת, או false אם יש שגיאה והשליחה נעצרת
            return isValid;
        }

        // פונקציה לבדיקת תקינות שם המשתמש
        function checkUserName() {
            let name = document.getElementById("userName").value;
            // בדיקה האם אורך השם קטן מ-2 תווים או גדול מ-30 תווים
            if (name.length < 2 || name.length > 30) {
                document.getElementById("usernameError").innerHTML = "The length of the name must be between 2 and 30 characters.";
                return false; 
            }
            return true; 
        }

        // פונקציה לבדיקת תקינות הסיסמה
        function checkPassword() {
            let pass = document.getElementById("userPassword").value;

            // בדיקה שהסיסמה מכילה לפחות 6 תווים
            if (pass.length < 6) {
                document.getElementById("passwordError").innerHTML = "Password must be at least 6 characters long.";
                return false;
            }

            let hasUpperCase = /[A-Z]/.test(pass); // בדיקה שיש לפחות אות אחת גדולה באנגלית
            let hasLowerCase = /[a-z]/.test(pass); // בדיקה שיש לפחות אות אחת קטנה באנגלית
            let hasNumbers = /[0-9]/.test(pass);   // בדיקה שיש לפחות מספר אחד

            if (!hasUpperCase || !hasLowerCase || !hasNumbers) {
                document.getElementById("passwordError").innerHTML = "Password must contain at least one uppercase letter, one lowercase letter, and one number.";
                return false; 
            }

            return true; 
        }
    </script>

    <style>
        /* קלאס עיצוב עבור הודעות השגיאה: צבע אדום, טקסט קטן ורווח מלמעלה */
        .error { color: red; font-size: 14px; display: block; margin-top: 5px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <h1>sign up - sport website</h1> </center>
    <form runat="server" method="post" onsubmit="return checkAll();">
        <div style="text-align: left; margin-left: 20px;">

            username: <input type="text" name="username" id="userName" placeholder="username" /><br /> 
            <span class="error" id="usernameError"></span>
            <br />
            
            password: <input type="password" name="password" id="userPassword" placeholder="password" /><br /> 
            <span class="error" id="passwordError"></span>

            <hr />
            <h2>favorite sport</h2>
            <input type="radio" id="SW" name="favoriteSport" value="swimming" /> swimming <br />
            <input type="radio" id="BB" name="favoriteSport" value="basketball" /> basketball <br />
            <input type="radio" id="FB" name="favoriteSport" value="football" /> football <br />
            <span class="error" id="favoriteSportError"></span>
            
            <hr />
            <h2>what are the two players you like the most </h2>
            <input type="checkbox" id="M" name="favoritePlayer" value="messi" /> messi <br />
            <input type="checkbox" id="R" name="favoritePlayer" value="ronaldo" /> ronaldo <br />
            <input type="checkbox" id="C" name="favoritePlayer" value="stephen curry" /> stephen curry <br />
            <input type="checkbox" id="L" name="favoritePlayer" value="lebron james" /> lebron james <br /> 
            <span class="error" id="favoritePlayerError"></span>
            
            <hr />
            <h2>how old are you?</h2>
            <select name="age" id="age">
                <option value="under 10">under 10</option>
                <option value="10-15">10-15</option>
                <option value="16-20">16-20</option>
                <option value="21-30">21-30</option>
                <option value="31 and above">31 and above</option>
            </select>
            <br /><br />

            <input id="sumbit1" type="submit" value="submit" />
            <br />
        </div>
    </form>

    <%=st %>
</asp:Content>