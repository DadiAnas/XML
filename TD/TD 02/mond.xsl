<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output method="html" />
    <xsl:template match="/">
            
        <html>
            
            <head>
                <meta charset="utf-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
                        <title>Countries</title>
                        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>
                            <link rel="stylesheet" href="assets/fonts/font-awesome.min.css"/>
                                <link rel="stylesheet" href="assets/fonts/ionicons.min.css"/>
                                    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700"/>
                                        <link rel="stylesheet" href="assets/css/Footer-Dark.css"/>
                                            <link rel="stylesheet" href="assets/css/Header-Dark.css"/>
                                                <link rel="stylesheet" href="assets/css/styles.css"/>
            </head>
            
            <body>
                <div>
                    <div class="header-dark">
                        <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                            <div class="container"><a class="navbar-brand" href="#">Country name</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                                <div class="collapse navbar-collapse"
                                    id="navcol-1">
                                    <ul class="nav navbar-nav">
                                        <li class="nav-item" role="presentation"></li>
                                        <li class="dropdown nav-item"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#">Dropdown </a>
                                            <div class="dropdown-menu" role="menu">
                                                <xsl:for-each select="/mondial/country">
                                                    <xsl:sort select="name" data-type="text"></xsl:sort>
                                                        
                                                         <a class="dropdown-item" role="presentation" href="#"><xsl:value-of select="name" /></a>
                                                        
                                                </xsl:for-each> 
                                               
                                            </div>
                                        </li>
                                    </ul>
                                    <form class="form-inline mr-auto" target="_self">
                                        <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" id="search-field" name="search" /></div>
                                    </form><span class="navbar-text"><a class="login" href="#">Log In</a></span><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></div>
                            </div>
                        </nav>
                        <div class="container hero">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <h1 class="text-center">Countries</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="color: rgb(255,255,255);background-color: #000000;">
                                    <h1>Name</h1>
                                </th>
                                <th style="color: rgb(255,255,255);background-color: #000000;">
                                    <h1>Population</h1>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/mondial/country">
                                <xsl:sort select="population[last()]" data-type="number"></xsl:sort>
                                
                                <xsl:choose>
                                    <xsl:when test="population[last()] &gt; 207776954">
                                        <tr >
                                            <td style="background-color: grey"><xsl:value-of select="name" /></td>
                                            <td style="background-color: grey"><xsl:value-of select="population[last()]" /></td>
                                        </tr>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <tr>
                                            <td><xsl:value-of select="name" /></td>
                                            <td><xsl:value-of select="population[last()]" /></td>
                                        </tr>
                                    </xsl:otherwise>
                                </xsl:choose> 
                                
                                
                            </xsl:for-each> 
                        </tbody>
                    </table>
                </div>
                <div class="footer-dark">
                    <footer>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6 col-md-3 item">
                                    <h3>Services</h3>
                                    <ul>
                                        <li><a href="#">Web design</a></li>
                                        <li><a href="#">Development</a></li>
                                        <li><a href="#">Hosting</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6 col-md-3 item">
                                    <h3>About</h3>
                                    <ul>
                                        <li><a href="#">Company</a></li>
                                        <li><a href="#">Team</a></li>
                                        <li><a href="#">Careers</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-6 item text">
                                    <h3>Countries Details</h3>
                                    <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                                </div>
                                <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                            </div>
                            <p class="copyright">Company Name © 2017</p>
                        </div>
                    </footer>
                </div>
                <script src="assets/js/jquery.min.js"></script>
                <script src="assets/bootstrap/js/bootstrap.min.js"></script>
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>