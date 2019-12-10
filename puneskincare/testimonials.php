<?php
if (!isset($_SESSION)) {
    session_start();
}
include('includes/config_db.php');
include('includes/config.php');
include('includes/functions.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <?php include './header.php'; ?>
        <?php
        $PageIdGet = 3;
        $Page = getStaticPageById($conn, $PageIdGet);
        if ($Page['meta_title'] != "" || $Page['meta_title'] != NULL) {
            ?>
            <title><?php echo $Page['meta_title']; ?></title>
            <?php
        } else {
            ?>
            <title><?php echo $Page['display_name']; ?> | Dr. Rane's Skin and Hair Clinic</title>
            <?php
        }
        ?>
        <meta name="keywords" content="<?php echo $Page['meta_keywords']; ?>">
        <meta name="description" content="<?php echo $Page['meta_description']; ?>">
    </head>
    <body>
        <?php include './navbar.php'; ?>

        <section class="inner-banner2 clearfix">
            <div class="container clearfix">
                <h2><?php echo $Page['display_name']; ?></h2>
            </div>
        </section>
        <section class="breadcumb-wrapper">
            <div class="container clearfix">
                <ul class="breadcumb">
                    <li><a href="index.php">Home</a></li>
                    <li><span><?php echo $Page['display_name']; ?></span></li>
                </ul>
            </div>
        </section>

        <!-- We offer Different Services-->
        <section class="about-tab-box sectpad">
            <div class="container clearfix">
                <div class="row pb-20">
                    <div class="col-md-12 col-sm-12 col-xs-12 pb-20">
                        <?php echo $Page['page_content']; ?>
                    </div>
                </div>
                <div class="row pb-50">
                    <div class="col-md-12">
                        <div id="testimonial-slider">
                            <?php
                            $Testimonials = getTestimonials($conn, 1);
                            foreach ($Testimonials as $Testimonial) {
                                $TestDescription = $Testimonial['description'];
                                $TestimonialDescription = getFixedLengthString($TestDescription, 1000);
                                ?>
                                <div class="testimonial">
                                    <div class="testimonial-content">
                                        <div class="testimonial-icon">
                                            <i class="fa fa-quote-left"></i>
                                        </div>
                                        <p class="description">
                                            <?php echo $TestimonialDescription; ?>
                                        </p>
                                    </div>
                                    <h3 class="title"><?php echo $Testimonial['testimonial_by']; ?></h3>
                                    <span class="post"><?php echo $Testimonial['email_id']; ?></span>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <div class="row clearfix pt-30">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 mt-30">
                        <div class="about-cont">
                            <div class="popup-gallery">
                                <div class="row">
                                    <?php
                                    $sql1 = "SELECT * FROM inner_page_gallery_statics "
                                            . "WHERE page_name_id = $PageIdGet "
                                            . "ORDER BY sorting_order ASC, id DESC";
                                    $result1 = $conn->query($sql1);
                                    if ($result1->num_rows > 0) {
                                        while ($row1 = $result1->fetch_assoc()) {
                                            $ImageId = $row1['id'];
                                            $sql2 = "SELECT * FROM media "
                                                    . "WHERE collection_name LIKE 'images' AND model_type LIKE '%InnerPageGalleryStatic%' AND model_id = $ImageId "
                                                    . "ORDER BY order_column ASC";
                                            $result2 = $conn->query($sql2);
                                            if ($result2->num_rows > 0) {
                                                while ($row2 = $result2->fetch_assoc()) {
                                                    ?>
                                                    <div class="col-md-3 pt-30">
                                                        <a data-fancybox="mygallery" href="<?php echo IMAGE_PATH . $row2['id'] . '/' . $row2['file_name']; ?>" alt="<?php echo $row1['alt_text']; ?>" title="<?php echo $row1['image_title']; ?>">
                                                            <img class="imageheight270" src="<?php echo IMAGE_PATH . $row2['id'] . '/' . $row2['file_name']; ?>" alt="<?php echo $row1['alt_text']; ?>" title="<?php echo $row1['image_title']; ?>" >
                                                        </a>
                                                    </div>
                                                    <?php
                                                }
                                            }
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>