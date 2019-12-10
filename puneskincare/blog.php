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
        $PageIdGet = 5;
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
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 pb-20">
                        <?php echo $Page['page_content']; ?>
                    </div>
                </div>

                <div class="row clearfix mb-50">
                    <div class="col-md-12 col-sm-12 col-xs-12 PageContent">
                        <div class="accordian-area accordian-area-pad">
                            <div id="accordion" role="tablist" aria-multiselectable="true" class="panel-group">
                                <div class="panel panel-default">
                                    <div id="headingOne" role="tab" class="panel-heading">
                                        <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed"><span> Categories </span><i class="fa fa-minus"></i><i class="fa fa-plus"></i></a></h4>
                                    </div>
                                    <div id="collapseOne" role="tabpanel" aria-labelledby="headingOne" class="panel-collapse collapse in">
                                        <div class="panel-body faq-content">
                                            <ul class="menu-list">
                                                <?php
                                                $sql_cat = "SELECT * FROM blog_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC";
                                                $result_cat = mysqli_query($conn, $sql_cat) or die(mysqli_error());
                                                while ($row_cat = mysqli_fetch_array($result_cat)) {
                                                    ?>
                                                    <li><a href = "blog-category.php?id=<?php echo $row_cat['id']; ?>&name=<?php echo $row_cat['seo_url']; ?>"><span class = "fa fa-long-arrow-right"></span> <?php echo $row_cat['name']; ?></a></li>
                                                    <?php
                                                }
                                                ?>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div id="headingTwo" role="tab" class="panel-heading">
                                        <h4 class="panel-title on"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> Recent Posts <i class="fa fa-minus"></i><i class="fa fa-plus"></i></a></h4>
                                    </div>
                                    <div id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" class="panel-collapse collapse in">
                                        <div class="panel-body faq-content">
                                            <ul class = "menu-list">
                                                <?php
                                                $sql_cat_post = "SELECT * FROM blog_posts WHERE display_status LIKE 'Yes' ORDER BY id DESC";
                                                $result_cat_post = mysqli_query($conn, $sql_cat_post) or die(mysqli_error());
                                                while ($row_cat_post = mysqli_fetch_array($result_cat_post)) {
                                                    ?>
                                                    <li><a href = "blog-post.php?id=<?php echo $row_cat_post['id']; ?>&name=<?php echo $row_cat_post['seo_url']; ?>"><span class = "fa fa-long-arrow-right"></span> <?php echo $row_cat_post['title']; ?></a></li>
                                                    <?php
                                                }
                                                ?>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
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