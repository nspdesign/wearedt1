<!DOCTYPE html>
<html lang="en">

<head>
 <?php include 'header.php'; ?>
            <title>contact - consulting-software-execution</title>

</head>

<body class="contact-pg">

 <?php include 'nav.php'; ?>
    
        <!-- end of header -->


        <!-- start page-title-wrapper -->
        <div class="page-title">
            <div class="container">
                <h1>Contact</h1>
            </div>
        </div>
        <!-- end page-title-wrapper -->


        <!-- start of contact-section --> 
        <section class="contact-section">
            <div class="contact-map" id="map"></div>
            <div class="container">
                <div class="row">
                    <div class="col col-md-5 col-md-offset-7 col-sm-6 col-sm-offset-6">
                        <div class="contact-form">
                            <h3>Contact Form</h3>
                            <ul>
                                <li><i class="fa fa-home"></i>M C T A Dr, Swiftwater, PA 18370</li>
                                <li><i class="fa fa-phone"></i>+1 570-839-1300</li>
                            </ul>
                            <h4>Send Email</h4>
                            <form class="form contact-validation-active" id="contact-form">
                                <div>
                                    <input type="text" name="name" class="form-control" placeholder="Full Name">
                                </div>
                                <div>
                                    <input type="email" name="email" class="form-control" placeholder="Email">
                                </div>
                                <div>
                                    <textarea name="note" class="form-control" placeholder="Message"></textarea>
                                </div>
                                <div class="submit">
                                    <button type="submit">Send</button>
                                    <span id="loader"><img src="images/contact-ajax-loader.gif" alt="Loader"></span>
                                </div>
                                <div class="error-handling-messages">
                                    <div id="success">Thank you</div>
                                    <div id="error"> Error occurred while sending email. Please try again later. </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end of contact-section -->       

<?php include 'footer.php'; ?>
      
</body>

</html>
