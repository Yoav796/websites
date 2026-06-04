<%@ Page Title="דף הבית" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home page.aspx.cs" Inherits="home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .page-header {
            margin-top: 30px;        
            font-size: 42px;    
            color: #1a237e;       
            text-decoration: underline;  
        }

        .sub-header {
            font-size: 40px;
            color: black;
            margin-top: 20px;
            font-weight: heavy;
        }

        .main-container {
            direction: rtl; /*כדי שהאתר יהיה מותאם לעברית*/
            text-align: center;
        }

        .hero-sport-image {
            width: 100%;            
            max-width: 1000px;      
            height: 350px;          
            object-fit: cover;     /*כדי שהתמונה תיהיה פרופורציומלית*/ 
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container">
        <h1 class="page-header">אתר חדשות הספורט - עמוד הבית</h1>
        
        <h2 class="sub-header">פה תוכלו להתעדכן בכל הדברים החדשים שקורים בעולם הספורט ולעלות כתבות ספורט בעצמכם</h2>
        
        <img src="images/תמונה%20לעובדה%202.jpg" 
             class="hero-sport-image" />
    </div>
</asp:Content>