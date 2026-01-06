<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sign up.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h1>sign up</h1>
    username: <input ="text" name="username" /><br />
    passward: <input ="text name ="passward" /><br />
    <hr />
    <h2>favorite sport</h2>
    <input type = "radio" id = "SW" name ="favorite sport" value ="swimming" /> swimming <br />
    <input type = "radio" id = "BB" name ="favorite sport" value ="basketball" /> basketball <br />
    <input type = "radio" id = "FB" name ="favorite sport" value ="football" /> football <br />
    <h2>what are the two players you like the most </h2>
    <input type = "checkbox" id = "M" name ="favorite player" value ="messi" /> messi <br />
    <input type = "checkbox" id = "R" name ="favorite player" value ="ronaldo" /> ronaldo <br />
    <input type = "checkbox" id = "C" name ="favorite player" value ="stephen curry" /> stephen curry <br />
    <input type = "checkbox" id = "L" name ="favorite player" value ="lebron james" /> lebron james <br />







</asp:Content>

