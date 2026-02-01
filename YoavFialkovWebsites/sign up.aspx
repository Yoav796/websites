<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <center> <h1>sign up - sport website</h1> </center>
    <form runat="server" method="post">
    <div style="text-align: left; margin-left: 20px;">

username: <input type="text" name="username" placeholder ="username" /><br /> 
password: <input type="password" name="password" placeholder ="password" /><br /> 
    <hr />
    <h2>favorite sport</h2>
    <input type = "radio" id = "SW" name ="favoriteSport" value ="swimming" /> swimming <br />
    <input type = "radio" id = "BB" name ="favoriteSport" value ="basketball" /> basketball <br />
    <input type = "radio" id = "FB" name ="favoriteSport" value ="football" /> football <br /> <hr />
    <h2>what are the two players you like the most </h2>
    <input type = "checkbox" id = "M" name ="favoritePlayer" value ="messi" /> messi <br />
    <input type = "checkbox" id = "R" name ="favoritePlayer" value ="ronaldo" /> ronaldo <br />
    <input type = "checkbox" id = "C" name ="favoritePlayer" value ="stephen curry" /> stephen curry <br />
    <input type = "checkbox" id = "L" name ="favoritePlayer" value ="lebron james" /> lebron james <br /> <hr />
    <h2>how old are you?</h2>
    <select name ="age" id ="age">
        <option value ="under 10">under 10</option>
        <option value ="10-15">10-15</option>
        <option value ="16-20">16-20</option>
        <option value ="21-30">21-30</option>
        <option value ="31 and above">31 and above</option>
    </select>
    <input id="sumbit1" type="submit" value="submit" />
    <br />
        </div>
                </form>

    <%=st %>
    
</asp:Content>

