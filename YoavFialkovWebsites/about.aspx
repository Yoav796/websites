<%@ Page Title="אודות" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .about-container {
            max-width: 600px;       
            margin: 40px auto;      /* גורם לפסקה להיות באצמע הדף */
            font-family: Arial, sans-serif; 
            direction: rtl;         /* השיהיה מותאם לעברית */
            line-height: 1.6;       /* הגדלת המרווח בין השורות כדי שיהיה נוח לקרוא */
        }
        
        .profile-img {
            width: 200px;           
            height: 200px;          
            object-fit: cover;      /* מונע איוות של התמונה */
            margin-bottom: 20px;    
            border: 3px solid black; 
        }
        
        .about-title {
            color: black;            
            margin-bottom: 15px;    
        }
        
        .about-text {
            color: black;            
            font-size: 18px;        
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="about-container">
        
        <h1 class="about-title">קצת עלינו</h1>
        
        <img src="https://upload.wikimedia.org/wikipedia/commons/8/88/Michael_Jordan.jpg" alt="מייקל ג'ורדן" class="profile-img" />
        
        <p class="about-text">
            שלום, מפתח האתר הוא <strong>יואב פיאלקוב</strong>. יואב בן 15 ולומד בתיכון כצנלסון. 
            יואב יצר את האתר הזה ובחר בנושא הספורט בגלל שהוא מאוד אוהב לעסוק בו ולהתעדכן בו ביום-יום. 
            לכן, הוא חשב שאתר שבו כל אחד יכול לרשום כתבת חדשות משלו יהיה פלטפורמה מצוינת לעזור לאנשים להתעדכן בדברים חדשים בעולם הספורט, לשתף את הספורט האהוב עליהם וליצור קהילת אוהדים חמה.
        </p>
        
    </div>
</asp:Content>