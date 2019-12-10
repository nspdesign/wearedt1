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
        $BlogPostGet = clean($_GET['id']);
        $BlogPostGet = filter_var($BlogPostGet, FILTER_VALIDATE_INT);
        $BlogPost = getBlogPostById($conn, $BlogPostGet);
        $authors_name_idDb = $BlogPost['authors_name_id'];
        $Author = getBlogAuthorById($conn, $authors_name_idDb);
        if ($BlogPost['meta_title'] != "" || $BlogPost['meta_title'] != NULL) {
            ?>
            <title><?php echo $BlogPost['meta_title']; ?></title>
            <?php
        } else {
            ?>
            <title><?php echo $BlogPost['title']; ?> | Blog Post | Dr. Rane's Skin and Hair Clinic</title>
            <?php
        }
        ?>
        <meta name="keywords" content="<?php echo $BlogPost['meta_keywords']; ?>">
        <meta name="description" content="<?php echo $BlogPost['meta_description']; ?>">
    </head>
    <body>
        <?php include './navbar.php'; ?>

        <section class="inner-banner2 clearfix">
            <div class="container clearfix">
                <h2><?php echo $BlogPost['title']; ?></h2>
            </div>
        </section>
        <section class="breadcumb-wrapper">
            <div class="container clearfix">
                <ul class="breadcumb">
                    <li><a href="index.php">Home</a></li>
                    <li><span><?php echo $BlogPost['title']; ?></span></li>
                </ul>
            </div>
        </section>

        <!-- We offer Different Services-->
        <section class="about-tab-box sectpad">
            <div class="container clearfix">

                <div class="row clearfix">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 pb-20">
                        <?php echo $BlogPost['blog_content']; ?>
                    </div>
                    <div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12 col-12 pb-20">
                        <?php
                        if ($BlogPost['featured_image'] != NULL || $BlogPost['featured_image'] != "") {
                            ?>
                            <img src="<?php echo IMAGE_PATH . $BlogPost['featured_image']; ?>" alt="<?php echo $BlogPost['title']; ?>" title="<?php echo $BlogPost['title']; ?>" class="imageheight350">
                            <?php
                        }
                        ?>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 text-center pt-20">
                        <a href="blog.php" class="btn btn-warning btn-lg"><i class="fa fa-long-arrow-left"></i> Blog</a>
                    </div>
                </div>

            </div>
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>