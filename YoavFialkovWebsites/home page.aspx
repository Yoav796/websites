<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home page.aspx.cs" Inherits="home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .page-header {
            margin-top: -200px;       
            padding-top: 10px;    
            font-size: 45px;    
            color: #1a237e;       
            text-decoration: underline;  
            font-family: Arial, sans-serif;
        }

        .main-container {
            direction: rtl; 
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container">
        <h1 class="page-header">אתר חדשות הספורט - עמוד הבית</h1>
        
        <p>פה תוכלו להתעדכן בכל הדברים שקואים בעולם הספורט</p>
    </div>
</asp:Content>