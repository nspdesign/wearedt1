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
        $PageIdGet = 1;
        $Page = getStaticPageById($conn, $PageIdGet);
        if ($Page['meta_title'] != "" || $Page['meta_title'] != NULL) {
            ?>
            <title><?php echo $Page['meta_title']; ?></title>
            <?php
        } else {
            ?>
            <title>Dr. Rane's Skin and Hair Clinic</title>
            <?php
        }
        ?>
        <meta name="keywords" content="<?php echo $Page['meta_keywords']; ?>">
        <meta name="description" content="<?php echo $Page['meta_description']; ?>">
    </head>
    <body>
        <?php include './navbar.php'; ?>
        <?php include './banner.php'; ?>

        <!-- We offer Different Services-->
        <section class="diff-offer-wrapper">
            <div class="container">
                <div class="row diff-offer">
                    <ul>
                        <li class="we-offer-cont">
                            <h2>We offer<span>Different Services</span></h2>
                        </li>
                        <li class="we-offer-cont2">
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Consect petur adipiscing elit.</p>
                        </li>
                    </ul>
                </div>
                <div class="row">
                    <div class="service-slider">
                        <?php
                        $Services = getServicesBlocks($conn, 8);
                        if ($Services) {
                            $countservice = 1;
                            foreach ($Services as $Service) {
                                ?>
                                <div class="item">
                                    <div class="serviceBox">
                                        <div class="service-icon text-center">
                                            <img src="<?php echo IMAGE_PATH . $Service['photo']; ?>" class="img-circle" style="max-width: 200px; width: 200px; min-width: 200px;">
                                        </div>
                                        <h3 class="title"><?php echo $Service['title']; ?></h3>
                                        <p class="description">
                                            <?php echo $Service['content']; ?>
                                        </p>
                                        <a href="<?php echo $Service['url_link']; ?>" class="read-more">Read More</a>
                                    </div>
                                </div>
                                <?php
                                $countservice++;
                            }
                        }
                        ?>
                    </div>
                </div>
                <div class="row pt-20">
                    <div class="col-md-12 col-sm-12 col-xs-12 pb-20">
                        <?php
                        $ShortNews = getLatestShortNews($conn, "Header");
                        ?>
                        <marquee class="marquee" scrolldelay = "120">
                            <?php echo $ShortNews['news_body']; ?>
                        </marquee>
                    </div>
                </div>
                <div class="row pt-20 pb-20">
                    <div class="col-md-12">
                        <?php
                        echo $Page['page_content'];
                        ?>
                    </div>
                </div>
            </div>
            <?php
            $Counters = getCountBlocks($conn, 4);
            if ($Counters) {
                ?>
                <div class="container pt-30">
                    <div class="row">
                        <?php
                        foreach ($Counters as $Counter) {
                            ?>
                            <div class="col-md-3 col-sm-6">
                                <div class="counter <?php echo $Counter['miscellaneous_1']; ?>">
                                    <h3><?php echo $Counter['title']; ?></h3>
                                    <span class="counter-value"><?php echo $Counter['counter']; ?></span>
                                    <p style="font-size: 16px; font-weight: 500;"><?php echo $Counter['additional_text']; ?></p>
                                </div>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                </div>
                <?php
            }
            ?>

            <?php
            $BlogPosts = getBlogPostAll($conn, 12);
            if ($BlogPosts) {
                ?>
                <div class="container pt-50">
                    <div class="section_header color">
                        <h2>Latest Blogs</h2>
                    </div>
                    <div class="row">
                        <div class="blog-slider">
                            <?php
                            foreach ($BlogPosts as $BlogPost) {
                                $authors_name_idDb = $BlogPost['authors_name_id'];
                                $Author = getBlogAuthorById($conn, $authors_name_idDb);
                                ?>
                                <div class="item">
                                    <a href="blog-post.php?id=<?php echo $BlogPost['id']; ?>&name=<?php echo $BlogPost['seo_url']; ?>">
                                        <div class="box">
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
                                            <div class="box-content">
                                                <h3 class="title"><?php echo $BlogPost['title']; ?></h3>
                                                <span class="post"> By <?php echo $Author['author_name']; ?></span>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <?php
            }
            ?> 
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>