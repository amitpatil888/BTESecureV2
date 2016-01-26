<%@ page import="com.boxtoeat.LandingPageController" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Box To Eat</title>

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>


    <!-- Custom CSS -->
    <asset:stylesheet src="grayscale.css"/>


    <!-- Custom Fonts -->
    <asset:stylesheet src="font-awesome.min.css"/>

    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <asset:javascript src="html5shiv.js"/>
    <asset:javascript src="respond.js"/>




</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">Indulge your taste buds
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">How does it work?</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#download">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#faqs">FAQs</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">Box To Eat</h1>
                        <p class="intro-text">An crowdsourced virtual restaurant<br>Operated by the foodies for the foodies</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <h1 class="row">

                <h2>How does box to eat work?</h2>

<p>
           <h4>     Grandma’s cookies</h4></p><p>
                A lot of people have ability to create one to two dishes which are appreciated by everyone (family and friends) even if they do not have professional chef’s credentials.

                Not all dishes are great in a good restaurant

                How many times have we walked in our favorite restaurant and found that a certain new dish that we ordered isn’t as good as the previous dish that we tried from the same place. The problem is that the sites like “yelp” are rating restaurants overall and not individual dishes offered by them. Unless you read or dig through hundreds of reviews it is very difficult to pin-point which dish would be good.
</p>
       <br><br>
            <p><h4>
                Registering as Chef</h4></p>
<p>
                Once completely launched anyone (Professional as well as home based) can register on “BoxtoEat” and become a chef. A chef’s profile other than his key vitals will contain pictures of his kitchen. Chef will also mention the type of cuisine he can offer (Thai, American, Italian etc).The chef will have to select the location of his kitchen. This mechanism will tap a lot of potential (from students, stay at home moms, homemakers, any enthusiastic cook and even professional chefs)

                Uploading the menu

                Chef can decide everyday what they want to cook that day and upload his menu for the day. The menu will mention if food is already prepared or the preparation time required once an order is placed. In case the food is already made the menu will have an expiry time (shelf life).The menu will also mention the number of units available.

                Chef‘s online reputation

                Each patron can review a chef and his dish and rate it. This will enable our system to prompt patron or enable a patron whenever they are looking for something specific. The rating and review system would be similar to yelp rating and reviews which most of us look at before trying to find a new restaurant.
        </p>
            <br><br>
            <p><h4>

                Registering as a patron</h4></p>
            <p>

                Once the platform is completely launched anyone can register as patron. A patron other than his vital stats will have his own reviews and ratings (given by the chefs)

                What will be available to the patron once he logs in

                The location of the patron will be determined based on his phone location or ISP. He will be asked for his choice of food for the day. Based on his choice selected, the menus will be available to him (with the distance and delivery method provided) against each menu option. The system will be smart enough to provide a set of recommendations based on his previous choices of food or awesome menu for the day. Other than the preference the patron has to register if he is allergic to any ingredient and the system will do filtering of menus if patron is allergic to something. In case the patron doesn’t like anything he sees he can issue a ticket.
</p>
            <br><br>
            <p><h4>
                The ticket
        </h4></p>
            <p>
                A patron can select how he wants his food made. For sake of simplicity say “Ravioli pasta with spinach and cheese with marinara sauce and with spice level 5 out 10” or “Organic Caesar salad with XYZ dressing”. The patron will select “bounty” or how many dollars he would like to spend on this dish. This ticket would go as a notification (SMS or app notification of phone) to the chefs who have registered in the vicinity and if the “bounty” set by the patron is agreeable to the chef, the chef allocates the ticket to himself. The chef who allocates the ticket first gets it. The patron can select filters like the timeliness of delivery, rating of the chefs at the time of issuing the ticket and the notification will only go to those chefs who qualify for those filters. The patron can also select an expiry time for the ticket (before it is picked) or else it can be defaulted if patron doesn’t select one.
                </p>
            </div>
        </div>
            </h1>
    </section>

    <!-- Download Section -->
    <section id="download" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">


                    <h2>Register and Login to Box to Eat</h2>
                 <br>
                    <a href="/BTESecureV2/LandingPage/checkStatus" class="btn btn-default btn-lg">Register/Login</a>
                </div>
            </div>
        </div>
    </section>
<!-- Download Section -->
<section id="faqs" class="content-section text-center">
    <div class="row">
        <div class="container">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>We think the concept is simple and self explaintory.How ever we are still new business and we are still
                compiling "stuff" to put up over here</h2>
                <p>

                </p></div>
        </div>
    </div>
</section>
    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact Box To Eat</h2>
                <p>Feel free to email us to provide some feedback ,suggestions or to just say hello!</p>
                <p><a href="mailto:admin@boxtoeat.com">admin@boxtoeat.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://github.com/IronSummitMedia/startbootstrap" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li>
                        <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section -->
    <div id="map"></div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; BoxToEat 2016</p>
        </div>
    </footer>

    <!-- jQuery -->
    <asset:javascript src="jquery.js"/>



    <!-- Bootstrap Core JavaScript -->

    <asset:javascript src="bootstrap.min.js"/>

    <!-- Plugin JavaScript -->
    <asset:javascript src="jquery.easing.min.js"/>



    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom Theme JavaScript -->
    <asset:javascript src="grayscale.js"/>



</body>

</html>
