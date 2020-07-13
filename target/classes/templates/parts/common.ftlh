<#macro page>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Light work</title>
    <link rel="icon" href="https://cdn4.iconfinder.com/data/icons/photo-illustration-categories-1/512/themes_0014-128.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/css/mdb.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@700&family=Questrial&display=swap" rel="stylesheet">
</head>

<style>
    body{
        background-color: #FFEBCD;
    }
    input{
        font-family: 'Domine', sans-serif;
    }
    test{
        font-family: 'Questrial', sans-serif;
    }
    test1{
        font-family: 'Domine', sans-serif;
    }
    b{
        color: green;
    }
    a{
        font-family: 'Domine', serif;
        text-decoration: none;
        color: black;
    }
    a:link{
        font-family: 'Domine', serif;
        text-decoration: none;
        color: black;
    }
    a:hover {
        color: #fcc200;
    }
</style>

<body>


<#include "navbar.ftlh">
    <div class="container mt-5">
        <#nested>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- Footer -->
    <footer class="page-footer font-small bg-dark darken-3 fixed-bottom mt-5">
        <!-- Footer Elements -->
        <div class="container">
            <!-- Grid row-->
            <div class="row">
                <!-- Grid column -->
                <div class="col-md-12 py-2">
                    <div class="mb-3 flex-center">

                        <!-- Facebook -->
                        <a class="fb-ic" href="/facebook.com">
                            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-lg"> </i>
                        </a>
                        <!-- Twitter -->
                        <a class="tw-ic">
                            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-lg"> </i>
                        </a>
                        <!-- Google +-->
                        <a class="gplus-ic">
                            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-lg"> </i>
                        </a>
                        <!--Linkedin -->
                        <a class="li-ic">
                            <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-lg"> </i>
                        </a>
                        <!--Instagram-->
                        <a class="ins-ic">
                            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-lg"> </i>
                        </a>
                        <!--Pinterest-->
                        <a class="pin-ic">
                            <i class="fab fa-pinterest fa-lg white-text fa-lg"> </i>
                        </a>
                    </div>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row-->
        </div>
        <!-- Footer Elements -->
        <!-- Copyright -->
        <div class="footer-copyright text-center py-1">©2020-${.now?string('yyyy')} Copyright:
            <a href="https://practicauniver.herokuapp.com"> Light work</a>
        </div>
        <!-- Copyright -->
    </footer>
    <!-- Footer -->

</body>

</html>

</#macro>