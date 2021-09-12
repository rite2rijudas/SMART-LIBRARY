<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- import font awesome  -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        
      }
      a {
        text-decoration: none;
        color: white;
      }
      .container {
        
        width: 100vw;
      }
      /* top nav bar */
      .upnav {
        
        display: flex;
        background-color: rgb(230, 15, 201);
        flex-direction: row-reverse;
        padding: 20px;
        border-radius: 60px;
      }
      .upnav-icon {
        font-size: 30px;
        border: 2px solid black;
        border-radius: 30px;

      }
      .upnav-icon:hover{
background-color: black;
      }
      .content {

        display: flex;
      }
      /* sidebar */
      .sidenav {
        display: flex;
        flex-direction: column;
        justify-content:start ;
        
        width: 15vw;
        background-color: rgb(33, 184, 189);
        height: 100vh;
      }
      .side-element {
        color: aliceblue;
        background-color: blue;
        display: flex;
        margin-bottom: 10px;
        width: 15vw;
        height: 50px;
        align-content: center;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        border: 3px solid black;
        border-radius: 60px;
        font-size: 20px;
      }
      .side-element:hover{
        color: black;
        background-color:yellow;
      }
.side-element:visited{
  
  background-color: rgb(20, 18, 18);
}
      /* main content */
      .element {
        /* background-image: url("images.jfif"); */
        background-repeat: no-repeat;
        object-fit: cover;
        display: flex;
        font-size: 40px;
        flex-direction: column;
background-color: red;
        justify-content: space-evenly;
        width: 85vw;
        
      }
/* .element:hover{
} */
.main {
  border: 3px solid black;
  border-radius: 60px;
  height: 15vw;
  width: 1200px;
  display: flex;
  flex-direction: column;
  background-color: green;
  align-items: center;
  color: yellow;
  /* text-align: center; */
  justify-items: center;
  justify-content: center;
}
.main:hover{
  
  color: white;
  background-color: black;
}
    </style>
  </head>
  <body>
    <div class="container">
      <!-- top nav bar -->
      <div class="upnav">
       <p class="upnav-icon">  <i class="fas fa-user-circle nav-icon"></i>
       <a href="">VIEW YOUR ACCOUNT</a></p>
      </div>

      <div class="content">
        <!-- side nav bar -->
        <div class="sidenav">
          <a href="index.jsp">
            <div class="side-element">HOME</div>
        </a>
          <a href="">
           <div class="side-element">ABOUT</div>
          </a>

           <a href="">
          <div class="side-element">CONTACT</div>
          </a>
        </div>
        <!-- main elements -->
        <div class="element">
          <a href="modBooks.jsp">
            <div class="book main">
              <i class="fas fa-book icon-class"></i>
              <p class="icon-text-class">BOOKS</p>
            </div>
          </a>
          <a href="modPendingBooks.jsp">
            <div class="verify main">
              <i class="fa fa-hourglass-start" aria-hidden="true"></i>
              <p class="icon-text-class">VERIFY BOOKS</p>
            </div>
          </a>
          <a href="">
            <div class="support main">
              <i class="fas fa-comments icon-class"></i>
              <p class="icon-text-class">VIEW SUPPORT</p>
            </div>
          </a>
        </div>
      </div>
    </div>
  </body>
</html>
