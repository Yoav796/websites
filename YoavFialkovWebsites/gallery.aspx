<%@ Page Title="גלריית ספורט" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב הגלריה */
        .gallery-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
            direction: ltr; /* תמונות בדרך כלל נראות טוב יותר משמאל לימין */
        }

        .gallery-item {
            position: relative;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            height: 250px;
            transition: transform 0.3s ease;
        }

        .gallery-item:hover {
            transform: scale(1.03);
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
        }

        .gallery-header {
            text-align: center;
            padding: 30px 0;
            font-family: Arial, sans-serif;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery-header">
        <h1>תמונות אייקוניות מהספורט שאי אפשר לשכוח</h1>
    </div>

    <div class="gallery-container">
        <div class="gallery-item">
            <img src="https://i.insider.com/5dfbeb03855cc21b4f4e05d5?width=800&format=jpeg" alt="Iconic Sport">
        </div>
        <div class="gallery-item">
            <img src="https://pickstar-cms-prod.imgix.net/images/general/air-jordan.png" alt="Michael Jordan">
        </div>
        <div class="gallery-item">
            <img src="https://i.guim.co.uk/img/media/53400f3d3fbe6298ad9f8c483b85b97636e20522/0_819_3261_1955/master/3261.jpg?width=1200&quality=85&auto=format&fit=max&s=32a3a0c0052eb2618f54d2e442570499" alt="Iconic Sports Photo">
        </div>
        <div class="gallery-item">
            <img src="https://pic1.calcalist.co.il/PicServer3/2016/08/10/628544/1L.jpg" alt="Michael Phelps">
        </div>
        <div class="gallery-item">
            <img src="https://s.yimg.com/ny/api/res/1.2/_GqP5JgOI1ypq73IYR5bZQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MTY7Y2Y9d2VicA--/https://s.yimg.com/os/creatr-images/2019-12/46bf4a80-1fd8-11ea-bfba-5a83456e2fc6" alt="Iconic Sports Moment">
        </div>
        <div class="gallery-item">
            <img src="https://viewsfromthesticks.com/wp-content/uploads/2020/06/tiger-masters-2019-andrew-redington.jpg?w=1484" alt="Tiger Woods Masters 2019">
        </div>
        <div class="gallery-item">
            <img src="https://assets.gqindia.com/photos/60d568e178863c66ba52c434/16:9/w_2560%2Cc_limit/Wimbledon%2520Roger%2520Federer.jpg" alt="Roger Federer Wimbledon">
        </div>
        <div class="gallery-item">
            <img src="https://cloudfront-us-east-1.images.arcpublishing.com/gray/W5YJ4ZROJVDSVBY332QDZ67L4Y.jpg" alt="Messi World Cup">
        </div>
        <div class="gallery-item">
            <img src="https://a.espncdn.com/photo/2019/1219/r643661_1296x729_16-9.jpg" alt="Iconic Sport">
        </div>
    </div>
</asp:Content>