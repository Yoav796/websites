<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>manager</h1>

    <form runat="server" method="post">
    username: <input type="text" name="username" placeholder ="username" /><br /> 
password: <input type="password" name="password" placeholder ="password" /><br /> 
         <input id="sumbit1" type="submit" value="submit" />
 <br />
             </form>

    <%=st %>
    <br />

</asp:Content>

