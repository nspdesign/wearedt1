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
        $BlogCategoryGet = clean($_GET['id']);
        $BlogCategoryGet = filter_var($BlogCategoryGet, FILTER_VALIDATE_INT);
        $BlogCategory = getBlogCategoryById($conn, $BlogCategoryGet);
        $CategoryIdDb = $BlogCategory['id'];
        if ($BlogCategory['meta_title'] != "" || $BlogCategory['meta_title'] != NULL) {
            ?>
            <title><?php echo $BlogCategory['meta_title']; ?></title>
            <?php
        } else {
            ?>
            <title><?php echo $BlogCategory['display_name']; ?> | Blog | Dr. Rane's Skin and Hair Clinic</title>
            <?php
        }
        ?>
        ?>
        <meta name="keywords" content="<?php echo $BlogCategory['meta_keywords']; ?>">
        <meta name="description" content="<?php echo $BlogCategory['meta_description']; ?>">
    </head>
    <body>
        <?php include './navbar.php'; ?>

        <section class="inner-banner2 clearfix">
            <div class="container clearfix">
                <h2><?php echo $BlogCategory['name']; ?></h2>
            </div>
        </section>
        <section class="breadcumb-wrapper">
            <div class="container clearfix">
                <ul class="breadcumb">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="blog.php">Blog</a></li>
                    <li><span><?php echo $BlogCategory['name']; ?></span></li>
                </ul>
            </div>
        </section>

        <!-- We offer Different Services-->
        <section class="about-tab-box sectpad">
            <div class="container clearfix">

                <div class="row clearfix">
                    <?php
                    $BlogPosts = getBlogPostAllByCategoryId($conn, $CategoryIdDb);
                    if ($BlogPosts) {
                        foreach ($BlogPosts as $BlogPost) {
                            $authors_name_idDb = $BlogPost['authors_name_id'];
                            $Author = getBlogAuthorById($conn, $authors_name_idDb);
                            ?>
                            <div class="col-lg-4 hvr-glow blog-outer">
                                <div class="blog-inner">
                                    <a href="blog-post.php?id=<?php echo $BlogPost['id']; ?>&name=<?php echo $BlogPost['seo_url']; ?>">
                                        <div class="thum">
                                            <div class="image">
                                                <?php
                                                if ($BlogPost['featured_image'] == NULL || $BlogPost['featured_image'] == "") {
                                                    ?>
                                                <img src="images/No_Image_Available.png" alt="No Image" title="" class="imageheight270">
                                                    <?php
                                                } else {
                                                    ?>
                                                    <img src="<?php echo IMAGE_PATH . $BlogPost['featured_image']; ?>" alt="<?php echo $BlogPost['title']; ?>" title="<?php echo $BlogPost['title']; ?>" class="imageheight270">
                                                    <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                        <div class="cont pt-20">
                                            <h4><?php echo $BlogPost['title']; ?></h4>
                                            <div class="course-teacher">
                                                <div class="name">
                                                    <h6> - <?php echo $Author['author_name']; ?></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <?php
                        }
                    }
                    ?>

                    <div class="clearfix"></div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 text-center pt-20">
                        <a href="blog.php" class="btn btn-warning btn-lg"><i class="fa fa-long-arrow-left"></i> Blog</a>
                    </div>
                </div>
            </div>
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>