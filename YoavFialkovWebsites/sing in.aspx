<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sing in.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" method="post">

        username : <input type="text" name="username" placeholder ="email" /><br /> 
        password: <input type="password" name="password" placeholder ="password" /><br /> 
        <input id="sumbit1" type="submit" value="submit" />
    </form>
    
    <%=stResult %>
</asp:Content>