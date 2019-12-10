<section class="indurial-t-solution indurial-solution indpad anim-5-all indurial-t-solution3">
    <div class="container clearfix">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="indurial-solution-text text-center">
                    <h2>Skin Disease? Hair Issues? Aging Signs? Preventive Skin Care. </h2><span class="contactus-button2 text-center"><a href="contact-us.php" class="submit">Contact Us </a></span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Indurial Solution-->
<footer class="sec-padding footer-bg footer-bg3">
    <div class="container clearfix">
        <div class="row">
            <div class="widget widget-links col-md-3 col-sm-6">
                <h4 class="widget_title">Skin Solutions</h4>
                <div class="widget-contact-list row m0">
                    <ul>
                        <?php
                        $FooterPages = getPagesByCategoryId($conn, 1, 6);
                        if ($FooterPages) {
                            foreach ($FooterPages as $FooterPage) {
                                ?>
                                <li>
                                    <a href="page.php?id=<?php echo $FooterPage['id']; ?>&name=<?php echo $FooterPage['seo_url']; ?>">
                                        - <?php echo $FooterPage['display_name'] ?>
                                    </a>
                                </li>
                                <?php
                            }
                        }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="widget widget-links col-md-3 col-sm-6">
                <h4 class="widget_title">Hair Solutions</h4>
                <div class="widget-contact-list row m0">
                    <ul>
                        <?php
                        $FooterPages = getPagesByCategoryId($conn, 2, 6);
                        if ($FooterPages) {
                            foreach ($FooterPages as $FooterPage) {
                                ?>
                                <li>
                                    <a href="page.php?id=<?php echo $FooterPage['id']; ?>&name=<?php echo $FooterPage['seo_url']; ?>">
                                        - <?php echo $FooterPage['display_name'] ?>
                                    </a>
                                </li>
                                <?php
                            }
                        }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="widget widget-links col-md-3 col-sm-6">
                <h4 class="widget_title">Quick Links</h4>
                <div class="widget-contact-list row m0">
                    <ul>
                        <li><a href="index.php">- Home</a></li>
                        <li><a href="image-gallery.php">- Gallery</a></li>
                        <li><a href="testimonials.php">- Testimonials</a></li>
                        <li><a href="blog.php">- Blog</a></li>
                        <li><a href="disclaimer.php">- Disclaimer</a></li>
                        <li><a href="contact-us.php">- Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget widget-contact col-md-3 col-sm-6">
                <h4 class="widget_title">Get in Touch</h4>
                <div class="widget-contact-list row m0">
                    <ul>
                        <li><i class="fa fa-map-marker"></i>
                            <div class="fleft location_address">H-204, Nano Homes, <br>Ravet, Pune.</div>
                        </li>
                        <li><i class="fa fa-phone"></i>
                            <div class="fleft contact_no"><a href="tel:+918055533589">+91 80555 33589</a></div>
                        </li>
                        <li><i class="fa fa-envelope-o"></i>
                            <div class="fleft contact_mail"><a href="mailto:info@puneskincare.com">info@puneskincare.com</a></div>
                        </li>
                        <li><i class="icon icon-Timer"></i>
                            <div class="fleft service_time">Appointments Recommended</div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<section class="footer-t-bottom footer-bottom footer-bottom3">
    <div class="container clearfix">
        <div class="pull-left fo-txt">
            <p>
                &COPY; 2019 <a href="index.php" rel="nofollow">Dr. Rane's Skin &AMP; Hair Clinic</a>. All rights reserved.
            </p>
        </div>
        <div class="pull-right fo-txt">
            <p>
                Designed &AMP; Developed By <a href="https://nspmultiserve.com/" rel="nofollow" target="_Blank" style="color: #b8dd74;">NSP Multiserve</a> (Web design company pune)
            </p>
        </div>
    </div>
</section>
<script src="js/jquery-1.12.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.js"></script>
<!-- owl carousel-->
<script src="vendors/owlcarousel/owl.carousel.min.js"></script>
<script src="vendors/jquery-ui-1.11.4/jquery-ui.min.js"></script>
<script src="js/theme.js"></script>