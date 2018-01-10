<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="csm_final.forms.Default" %>


<!DOCTYPE html>
 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
        
    <title>FP6</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400"/>  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="Styles/font-awesome.min.css"/>                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="Styles/bootstrap.min.css"/>                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="Styles/hero-slider-style.css"/>                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="Styles/magnific-popup.css"/>                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="Styles/templatemo-style.css"/>                                   
    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
        
        <!-- Content -->
        <div class="cd-hero">

            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">
                        
                        <a class="navbar-brand text-uppercase" href="#"><i class="fa fa-ice tm-brand-icon"></i></a>

                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">Home<span class="sr-only">(current)</span></a>
                                </li>                                
                                <li class="nav-item"active selected >
                                    <a  class ="nav-link" href= "min_login.aspx">Ministry Portal </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">Warehouse Portal </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">About Us</a>
                                </li>
                                
                            </ul>
                        </div>                        
                    </div>

                </nav>
            </div> 

            <ul class="cd-hero-slider">

                <!-- Page 1 Home -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-pad" data-page-no="1">
                            <div class="row">
                                    <div class="tm-3-col-container">                                        
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                    <i class="fa fa-4x fa-pagelines tm-home-fa"></i>
                                                    <h2 class="tm-text-title">MINISTRY PORTAL</h2>                                           
                                                    <p class="tm-text"> Contains data on various key performance indicators (KPI's) of cold chain projects. <!---<a href="http://www.templatemo.com/tm-494-motion" target="_blank">Motion Template</a>---></p>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                    <i class="fa fa-4x fa-home tm-home-fa"></i>
                                                    <h2 class="tm-text-title">WAREHOUSE PORTAL</h2>
                                                    <p class="tm-text">Contains a registry portal and manager login page .</p>
                                                </div>          
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 tm-3-col-textbox">
                                                <div class="text-xs-left tm-textbox tm-textbox-padding tm-bg-white-translucent tm-3-col-textbox-inner">
                                                    <i class="fa fa-4x fa-tree tm-home-fa"></i>
                                                    <h2 class="tm-text-title">About Us</h2>
                                                    <p class="tm-text"> Created by BPITians <!--<a href="http://fontawesome.io/icons/" target="_parent">Font Awesome</a>---></p>
                                                </div>          
                                            </div>                                        
                                    </div>
                            </div>
                        </div>
                    </div>
                </li>
                
                <!-- Page 2 Gallery One -->
              
                <li>                    
                    <div id = "min_portal" class="cd-full-width" >
                        <div class="container-fluid js-tm-page-content" data-page-no="2" data-page-type="gallery">
                            <div class="tm-img-gallery-container">
                                <div class="tm-img-gallery gallery-one">
                                <!-- Gallery One pop up connected with JS code below -->                                    
                                    <div class="tm-img-gallery-info-container">                                    
                                        <h2 class="tm-text-title tm-gallery-title tm-white"><span class="tm-white">Ministry Portal</span></h2>
                                        <p class="tm-text">Shows different Key Performance Indicators(KPI's)</p>
                                    </div> <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-05.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Login</span></h2>
                                                <p class="tm-figure-description">If you're already registered, login here.</p>
                                                <a href="min_login.aspx">View more</a>
                                           </figcaption>           
                                        </figure>
                                    </div>                                                                          
                                </div>                                 
                            </div>
                        </div>                                                    
                    </div>                    
                </li>
               
                <!-- Page 3 Gallery Two -->
                <li>                    
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="3" data-page-type="gallery">
                            <div class="tm-img-gallery-container tm-img-gallery-container-2">
                                <div class="tm-img-gallery gallery-two">
                                <!-- Gallery Two pop up connected with JS code below -->
                                    
                                    <div class="tm-img-gallery-info-container">                                    
                                        <h2 class="tm-text-title tm-gallery-title"><span class="tm-white">Warehouse Portal</span></h2>
                                        <p class="tm-text"><span class="tm-blue">For Cold Chain managers, If you are not registered yet,click on Register.</span>
                                        </p>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-05.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Login</span></h2>
                                                <p class="tm-figure-description">If you're already registered, login here.</p>
                                                <a href="cc_login.aspx">View more</a>
                                           </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                          <img src="img/tm-img-06.jpg" alt="Image" class="img-fluid tm-img"></a>
                                            <figcaption>
                                                <h2 class="tm-figure-title"><span>Registration</span></h2>
                                                <p class="tm-figure-description">Sign Up</p>
                                                <a href="entry_ccreg.aspx">Register</a>  
                                            </figcaption> 
                                                
                                        </figure>
                                    </div>
                                    
                                    
                                     
                                </div>                                 
                            </div>
                        </div>                      
                    </div>
                </li>

                <!-- Page 4 Gallery Three -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content" data-page-no="4" data-page-type="gallery">                        
                            <div class="tm-img-gallery-container tm-img-gallery-container-3">
                                <div class="tm-img-gallery gallery-three">
                                <!-- Gallery Two pop up connected with JS code below -->
                                    
                                    <div class="tm-img-gallery-info-container">                                    
                                        <h2 class="tm-text-title tm-gallery-title"><span class="tm-white">Third Image Grid</span></h2>
                                        <p class="tm-text"><span class="tm-white">Nulla efficitur, ligula et imperdiet volutpat, lacus tortor tempus massa, eget tempus quam nibh vel nulla. Maecenas purus sem, lobortis id odio in, ultrices scelerisque sapien.</span>
                                        </p>                                     
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-11-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>One</span></h2>
                                                <p class="tm-figure-description">Suspendisse id placerat risus. Mauris quis luctus risus.</p>
                                                <a href="img/tm-img-11.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-12-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>Two</span></h2>
                                                <p class="tm-figure-description">Maecenas purus sem, lobortis id odio in sapien.</p>
                                                <a href="img/tm-img-12.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-13-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>Three</span></h2>
                                                <p class="tm-figure-description">Suspendisse id placerat risus. Mauris quis luctus risus.</p>
                                                <a href="img/tm-img-13.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-14-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>Four</span></h2>
                                                <p class="tm-figure-description">Maecenas purus sem, lobortis id odio in sapien.</p>
                                                <a href="img/tm-img-14.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-15-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>Five</span></h2>
                                                <p class="tm-figure-description">Suspendisse id placerat risus. Mauris quis luctus risus.</p>
                                                <a href="img/tm-img-15.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>
                                    <div class="grid-item">
                                        <figure class="effect-ruby">
                                            <img src="img/tm-img-16-tn.jpg" alt="Image" class="img-fluid tm-img">
                                            <figcaption>
                                                <h2 class="tm-figure-title">Picture <span>Six</span></h2>
                                                <p class="tm-figure-description">Maecenas purus sem, lobortis id odio in sapien.</p>
                                                <a href="img/tm-img-16.jpg">View more</a>
                                            </figcaption>           
                                        </figure>
                                    </div>                                                                                                 
                                </div>                                 
                            </div> <!-- .tm-img-gallery-container -->
                        </div>         
                    </div>  
                </li>

                <!-- Page 5 About -->
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-width" data-page-no="5">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-flex">
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-textbox-padding tm-white-box-margin-b">
                                            <h2 class="tm-text-title">Lorem ipsum dolor</h2>
                                            <p class="tm-text">Nulla efficitur, ligula et imperdiet volutpat, lacus tortor tempus massa, eget tempus quam nibh vel nulla. Vivamus non molestie leo, non tincidunt diam. Mauris sagittis elit in velit ultricies aliquet sed in magna. Pellentesque semper, est nec consequat viverra, sem augue tincidunt nisi, a posuere nisi sapien sed sapien. Nulla facilisi.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="tm-flex">
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">Nulla facilisi</h2>
                                            <p class="tm-text">Donec vitae bibendum est, et ultrices urna. Curabitur ac bibendum augue, a convallis mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed ultrices placerat arcu.</p>
                                        </div>
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                            <h2 class="tm-text-title">Aliquam sem sem</h2>
                                            <p class="tm-text">Proin sagittis mauris dolor, vel efficitur lectus dictum nec. Sed ultrices placerat arcu, id malesuada metus cursus suscipit. Donex quis consectetur ligula. Proin accumsan eros id nisi porttitor, a facilisis quam cursus.</p>     
                                        </div>
                                    </div>
                                </div>
                            </div>                        
                        </div>              
                    </div> <!-- .cd-full-width -->

                </li>

                <!-- Page 6 Contact Us 
                <li>
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content tm-page-pad" data-page-no="6">
                            <div class="tm-contact-page">                                
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="tm-flex tm-contact-container">                                
                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-contact-info">Contact Us</h2>
                                                <p class="tm-text">Praesent tempus dapibus odio nec elementum. Sed elementum est quis tortor faucibus, et molestie nibh finibus. Mauris condimentum ex vestibulum fringilla consectetur.</p>                                                
                                                
                                                <!-- contact form 
                                                <form action="index.html" method="post" class="tm-contact-form">

                                                    <div class="form-group">
                                                        <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Name"  required/>
                                                    </div>
                                        
                                                    <div class="form-group">                                                        
                                                        <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Email"  required/>
                                                    </div>                                                        
                                                    
                                                    <div class="form-group">
                                                        <textarea id="contact_message" name="contact_message" class="form-control" rows="5" placeholder="Your message" required></textarea>
                                                    </div> 

                                                    <button type="submit" class="pull-xs-right tm-submit-btn">Send</button>  
                                                
                                                </form>  
                                            </div>

                                            <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding tm-textbox-padding-contact">
                                                <h2 class="tm-contact-info">123 New Street 11000, San Francisco, CA</h2>
                                                 google map goes here 
                                                <div id="google-map"></div>
                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>    

                        </div>
                        
                    </div> .cd-full-width
                </li>   
                                                               ---->
            </ul> <!-- .cd-hero-slider -->
          <!----  
            <footer class="tm-footer">
            
                <div class="tm-social-icons-container text-xs-center">
                    <a href="#" class="tm-social-link"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-behance"></i></a>
                    <a href="#" class="tm-social-link"><i class="fa fa-linkedin"></i></a>
                </div>
                
                <p class="tm-copyright-text"> &copy; 
                
                -<a rel="nofollow" href="http://www.templatemo.com/page/1" class="tm-footer-link" target="_parent">Templ</a></p>
                ------>
            </footer>
                    
        </div> <!-- .cd-hero -->
        

        <!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
        
        <script>

            function adjustHeightOfPage(pageNo) {

                var offset = 80;
                var pageContentHeight = 0;

                var pageType = $('div[data-page-no="' + pageNo + '"]').data("page-type");

                if (pageType != undefined && pageType == "gallery") {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .tm-img-gallery-container").height();
                }
                else {
                    pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();
                }

                if ($(window).width() >= 992) { offset = 120; }
                else if ($(window).width() < 480) { offset = 40; }

                // Get the page height
                var totalPageHeight = 15 + $('.cd-slider-nav').height()
                                        + pageContentHeight + offset
                                        + $('.tm-footer').height();

                // Adjust layout based on page height and window height
                if (totalPageHeight > $(window).height()) {
                    $('.cd-hero-slider').addClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
                }
                else {
                    $('.cd-hero-slider').removeClass('small-screen');
                    $('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
                }
            }

            /*
            Everything is loaded including images.
            */
            $(window).load(function () {

                adjustHeightOfPage(1); // Adjust page height

                /* Gallery One pop up
                -----------------------------------------
                $('.gallery-one').magnificPopup({
                delegate: 'a', // child items selector, by clicking on it popup will open
                type: 'image',
                gallery: { enabled: true }
                });

                /* Gallery Two pop up
                -----------------------------------------*/
                /* $('.gallery-two').magnificPopup({
                delegate: 'a',
                type: 'image',
                gallery: { enabled: true }
                });
                */
                /* Gallery Three pop up
                -----------------------------------------
                $('.gallery-three').magnificPopup({
                delegate: 'a',
                type: 'image',
                gallery: { enabled: true }
                });
                */
                /* Collapse menu after click 
                -----------------------------------------*/
                $('#tmNavbar a').click(function () {
                    $('#tmNavbar').collapse('hide');

                    adjustHeightOfPage($(this).data("no")); // Adjust page height       
                });

                /* Browser resized 
                -----------------------------------------*/
                $(window).resize(function () {
                    var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");

                    // wait 3 seconds
                    setTimeout(function () {
                        adjustHeightOfPage(currentPageNo);
                    }, 100);

                });

                // Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
                $('body').addClass('loaded');

            });

            /* Google map
            ------------------------------------------------*/
            var map = '';
            var center;

            function initialize() {
                var mapOptions = {
                    zoom: 15,
                    center: new google.maps.LatLng(37.769725, -122.462154),
                    scrollwheel: false
                };

                map = new google.maps.Map(document.getElementById('google-map'), mapOptions);

                google.maps.event.addDomListener(map, 'idle', function () {
                    calculateCenter();
                });

                google.maps.event.addDomListener(window, 'resize', function () {
                    map.setCenter(center);
                });
            }

            function calculateCenter() {
                center = map.getCenter();
            }

            function loadGoogleMap() {
                var script = document.createElement('script');
                script.type = 'text/javascript';
                script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
                document.body.appendChild(script);
            }

            // DOM is ready
            $(function () {
                loadGoogleMap(); // Google Map
            });

        </script>            

</body>
</html>