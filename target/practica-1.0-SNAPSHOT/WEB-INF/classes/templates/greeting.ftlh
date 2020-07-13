<#include "parts/securety.ftlh">

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Light work</title>
    <link rel="icon" href="https://cdn4.iconfinder.com/data/icons/photo-illustration-categories-1/512/themes_0014-128.png" type="image/x-icon">

    <link href="https://fonts.googleapis.com/css2?family=Kreon:wght@700&family=Spartan:wght@500&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/css/mdb.min.css" rel="stylesheet">
</head>


<style>
    body {
        padding-top: 50px;
    }

    body::after {
        content: "";
        background-image: url('https://cdn.the-scientist.com/assets/articleNo/66864/hImg/35077/forest-x.jpg');
        opacity: 0.6;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0;
        position: fixed;
        z-index: -1;
    }

    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        font-family: 'Spartan', sans-serif;
        font-size: 30pt;
    }

    li {
        float: left;
    }

    li a {
        display: block;
        color: rgba(0, 0, 0, 0.7);
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    li a:hover {
        color: #ffbc00;
        text-decoration: none;
    }
</style>

<body>
    <h1 style="text-align: center; margin-top: 20%;
        color: rgba(0, 0, 0, 0.8); font-family: 'Kreon', serif;
        font-size: 60pt;">
        <strong>Light work</strong>
    </h1>

    <div class="d-flex justify-content-center mb-5">
        <ul>
            <li><a href="/main">Articles</a></li>
            <li><a href="/calculation">Calculation</a></li>
            <li><a href="/yourbody">Yourbody</a></li>
            <#if user??>
                <li>
                    <a href="/user/profile">Profile</a>
                </li>
            </#if>
            <#if isAdmin || isPrivate>
                <li>
                    <a href="/addArticle">Add Article</a>
                </li>
            </#if>
            <#if isAdmin || isPrivate>
                <li class="nav-item">
                    <a class="nav-link" href="/message">Article List</a>
                </li>
            </#if>
            <#if isAdmin>
                <li>
                    <a href="/user">User List</a>
                </li>
            </#if>
        </ul>
    </div>

    <div class="mt-5 mb-5">
        <br><br>
        <br><br>
        <br><br>
        <br><br>
    </div>


    <!-- Footer -->
    <footer class="page-footer font-small bg-dark darken-3 fixed-bottom">

        <!-- Footer Elements -->
        <div class="container">

            <!-- Grid row-->
            <div class="row">

                <!-- Grid column -->
                <div class="col-md-12 py-3">
                    <div class="mb-5 flex-center">

                        <!-- Facebook -->
                        <a class="fb-ic" href="https://www.facebook.com">
                            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!-- Twitter -->
                        <a class="tw-ic">
                            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!-- Google +-->
                        <a class="gplus-ic">
                            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!--Linkedin -->
                        <a class="li-ic">
                            <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!--Instagram-->
                        <a class="ins-ic">
                            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                        </a>
                        <!--Pinterest-->
                        <a class="pin-ic">
                            <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
                        </a>
                    </div>
                </div>
                <!-- Grid column -->

            </div>
            <!-- Grid row-->

        </div>
        <!-- Footer Elements -->

        <!-- Copyright -->
        <div class="footer-copyright text-center py-3">© ${.now?string('yyyy')} Copyright:
            <a href="https://practicauniver.herokuapp.com"> Light work</a>
        </div>
        <!-- Copyright -->

    </footer>
    <!-- Footer -->
</body>

</html>