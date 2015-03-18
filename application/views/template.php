<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> {pagetitle} </title>
        <link rel="stylesheet" href="style/base.css" media="screen">
        <link rel="stylesheet" href="style/baseprint.css" media="print">
        <link rel="icon" type="image/png" href="images/favicon.png">
        
        <script language="javascript" type="text/javascript" src="js/blog.js"></script>

<!--    Not sure these scripts are needed...    
        <script src="js/lightbox-2.6.min.js"></script>
        <script src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>        
-->
 
        <script src="/assets/js/blog.js" language="javascript" type="text/javascript"></script>
        <script src="/assets/js/jquery-1.11.1.min.js" language="javascript" type="text/javascript"></script>
        <script src="/assets/js/bootstrap.min.js" language="javascript" type="text/javascript"></script>
        
        <!-- Slimbox2 scripts & style -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script src="/assets/js/slimbox2.js" type="text/javascript"></script>
        <link href="/assets/css/slimbox2.css" rel="stylesheet"  type="text/css" media="screen" /> 
        
        <!-- CKEditor script -->
        <script src="/ckeditor/ckeditor.js"></script>
                
    </head>

    <body>
        <div id="wrapper">
            <!-- logo -->
            <a href="/">
                <div id="logo">
                    <p>Logo</p>
                </div>		
            </a>

            <!-- header -->
            <div id="header">
                <svg id="title" xmlns="http://www.w3.org/2000/svg" pointer-events="none"></svg>

                <a href="/">
                    <div id="titleLink">
                        Home
                    </div>
                </a>

            </div>

            <!-- navbar -->
            <div id="nav">
                <ul>
                    <li>
                        <div class="navbutton">
                            <a href="/"><p class="link">Home</p></a>
                        </div>
                    </li>
                    <li>
                        <div class="navbutton">
                            <a href="/gallery"><p class="link">Gallery</p></a>
                        </div>
                    </li>
                    <li>
                        <div class="navbutton">
                            <a href="/blog"><p class="link">Blog</p></a>
                        </div>
                    </li>
                    <li>
                        <div class="navbutton">
                            <a href="/bio"><p class="link">Bio</p></a>
                        </div>
                    </li>
                    <li>
                        <div class="navbutton">
                            <a href="/contact"><p class="link">Contact</p></a>
                        </div>
                    </li>
                    <li>
                        <div class="navbutton">
                            <a href="/signin#signInContainer"><p class="link">Sign In</p></a>
                        </div>
		</li>
                </ul>
            </div>

            <!-- content -->
                {content}


            <!-- footer -->
            <div id="footer">
                <p>Copyright &copy; 2014 Sliver of Light Photography</p>
            </div>

        </div>
    </body>
</html>
