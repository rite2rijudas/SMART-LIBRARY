<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- using font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- include stylesheet -->
    <link rel="stylesheet" href="./css/adindex.css">
</head>

<body>
    <!-- top navbar -->
    <nav class="top-navigation">
        <img src="./img/SMART LIBRARY.png" alt="logo" class="header-logo"/>
        <a href="#">
            <i class="fas fa-user-circle nav-icon"></i>
            <p class="nav-icon-text">Hi! ADMIN</p>
        </a>
    </nav>
    <div class="maincontainer">
        <!-- left sidebar -->
        <div class="sidebar" id="sidebasr">
          <a href="#"><div class="menu-items menu-items-active">home</div></a>
          <a href="#"><div class="menu-items">about</div></a>
          <a href="#"><div class="menu-items">contact</div></a>
        </div>
        <!-- main content -->
        <div id="container" class="container">
            <a href="adminBooks.jsp">
            <div id="books-con" class="books-con adjust-item"><i class="fas fa-book icon-class"></i>
                <p class="icon-text-class">BOOKS</p>
            </div>
            </a>
            <a href="adModerator.jsp">
            <div id="modderator-con" class="moderator-con adjust-item"><i class="fas fa-user-alt icon-class"></i>
                <p class="icon-text-class">MODERATORS</p>
            </div>
            </a>
            <a href="adUser.jsp">
            <div id="users-con" class="users-con adjust-item"><i class="fas fa-users icon-class"></i>
                <p class="icon-text-class">USERS</p>
            </div>
            </a>
            <a href="adVerifyBook.jsp">
            <div id="pending-books-con" class="pending-books-con adjust-item"><i class="fas fa-exclamation-circle icon-class"></i>
                <p class="icon-text-class">PENDING BOOKS</p>
            </div>
            </a>
            <a href="">
            <div id="history-con" class="history-con adjust-item"><i class="fas fa-history icon-class"></i>
                <p class="icon-text-class">HISTORY</p>
            </div>
            </a>
            <a href="">
            <div id="view-support-con" class="view-support-con adjust-item"><i class="fas fa-comments icon-class"></i>
                <p class="icon-text-class">VIEW SUPPORT</p>
            </div>
            </a>
        </div>
    </div>
</body>

</html>