<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language ="javascript">
        function checkAll() {
            return true;

            usernameError.innerHTML = "";
            favoriteSport.innerHTML = "";
            favoritePlayer.innerHTML = "";
            ageError.innerHTML = "";

            f = true; 

            f = checkUserName() && f;
            f = checkfavoriteSport() && f;
            f = checkFavoritePlayer() && f;
            f = checkAge() && f;
            return f;

            function checkUserName() {
                name = document.getElemmentById("userName").value;
                if (name.length < 2 || name.length > 30) {
                    usernameError.innerHTML = "the lenght of the name is not proper"
                    return false
                }
                return true
            }

        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center> <h1>sign up - sport website</h1> </center>
    <form runat="server" method="post" onsubmit="return checkAll();">
    <div style="text-align: left; margin-left: 20px;">

username: <input type="text" name="username" placeholder ="username" /><br /> 
password: <input type="password" name="password" placeholder ="password" /><br /> 
        <span class="error" id="usernameError"></span>


    <hr />
    <h2>favorite sport</h2>

    <input type = "radio" id = "SW" name ="favoriteSport" value ="swimming" /> swimming <br />
    <input type = "radio" id = "BB" name ="favoriteSport" value ="basketball" /> basketball <br />
    <input type = "radio" id = "FB" name ="favoriteSport" value ="football" /> football <br /><hr />
        <span class="error" id="favoriteSport"></span>



    <h2>what are the two players you like the most </h2>
    <input type = "checkbox" id = "M" name ="favoritePlayer" value ="messi" /> messi <br />
    <input type = "checkbox" id = "R" name ="favoritePlayer" value ="ronaldo" /> ronaldo <br />
    <input type = "checkbox" id = "C" name ="favoritePlayer" value ="stephen curry" /> stephen curry <br />
    <input type = "checkbox" id = "L" name ="favoritePlayer" value ="lebron james" /> lebron james <br /> <hr />
        <span class="error" id="favoritePlayer"></span>


    <h2>how old are you?</h2>
    <select name ="age" id ="age">
        <option value ="under 10">under 10</option>
        <option value ="10-15">10-15</option>
        <option value ="16-20">16-20</option>
        <option value ="21-30">21-30</option>
        <option value ="31 and above">31 and above</option>
        <span class="error" id="ageError"></span>

    </select>
    <input id="sumbit1" type="submit" value="submit" />
    <br />
        </div>
                </form>

    <%=st %>
    
</asp:Content>

