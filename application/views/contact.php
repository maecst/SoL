<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Contact Me | Sliver of Light Photography</title>
        <link rel="stylesheet" href="style/base.css" media="screen">
        <link rel="stylesheet" href="style/baseprint.css" media="print">
        <link rel="icon" type="image/png" href="images/favicon.png">
    </head>

    <body>
        <div id="wrapper">

            <!-- logo -->
            <a href="index">
                <div id="logo">
                    <p>Logo</p>
                </div>		
            </a>

            <!-- header -->
            <div id="header">
                <svg id="title" xmlns="http://www.w3.org/2000/svg" pointer-events="none"></svg>
                    <a href="index">
                        <div id="titleLink">
                            Home
                        </div>
                    </a>
            </div>


            <!-- nav -->
            <?php
                include_once "navbar.php";
            ?>

            <!-- content -->
            <div id="content">
                <div id="contact">
                    <h2>Contact</h2>
                        <br>
                        <br>
                        <p>Mae Yee<br>
                        <br>
                        <br>
                        <a href="mailto:sliveroflight@live.ca">sliveroflight (at) live (dot) ca</a><br>
                        <br>
                        Vancouver, BC<br>
                        Canada</p>

                        <!-- social media icons -->
                        <div id="icons">
                        <a href="https://www.facebook.com/pages/Sliver-of-Light-Photography/101401766683369?ref=hl"> 
                                <img src="images/icon_facebook.png" class="mediaicons" alt="Sliver of Light Photography on Facebook"> </a> 
                            <a href="http://sliveroflight.tumblr.com/"> 
                                <img src="images/icon_tumblr.png" class="mediaicons" alt="Sliver of Light Photography on Tumblr"> </a> 
                            <a href="http://www.flickr.com/photos/sliveroflight/sets/"> 
                                <img src="images/icon_flickr.png" class="mediaicons" alt="Sliver of Light Photography on Flickr"> </a> 
                            <a href="http://instagram.com/sliveroflight#"> 
                                <img src="images/icon_instagram.png" class="mediaicons" alt="Sliver of Light Photography on Instagram"> </a> 
                        </div>

            </div>
                </div>

                <br>



            <!-- footer -->
            <div id="footer">
                <p>Copyright &copy; 2014 Sliver of Light Photography</p>
            </div>

        </div>

    </body>
</html>