<header id="header">
    <!-- Logo Section-->
    <div class="container">
        <div class="row pad-logo logo-wrapper">
            <div class="col-lg-12 t-logo"><a href="index.php"><img src="images/logo-new.jpg" alt="logo" class="img-responsive"></a></div>
        </div>
    </div>
    <div class="clearfix"></div>
    <!-- Main Navigation-->
    <div class="main_menu menu_fixed nav-home-three">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="logo"></div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="nav-menu pull-left text-left">
                        <div class="nav-t-holder pull-left text-left">
                            <div class="nav-t-header">
                                <button><i class="fa fa-bars"></i></button>
                            </div>
                            <div class="nav-t-footer">
                                <ul class="nav">
                                    <li><a href="index.php">Home</a></li>
                                    <?php
                                    $sql_cat = "SELECT * FROM page_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC LIMIT 0,3";
                                    $result_cat = $conn->query($sql_cat);
                                    if ($result_cat->num_rows > 0) {
                                        while ($row_cat = $result_cat->fetch_assoc()) {
                                            $category_name_id = $row_cat['id'];
                                            ?>
                                            <li class="has-t-submenu">
                                                <a href="#"><?php echo $row_cat['display_name']; ?></a>
                                                <ul class="submenu">
                                                    <?php
                                                    $sql_page1 = "SELECT * FROM pages WHERE display_status LIKE 'Yes' AND category_name_id = $category_name_id ORDER BY sorting_order ASC";
                                                    $result_page1 = $conn->query($sql_page1);
                                                    if ($result_page1->num_rows > 0) {
                                                        while ($row_page1 = $result_page1->fetch_assoc()) {
                                                            ?>
                                                            <li>
                                                                <a href="page.php?id=<?php echo $row_page1['id']; ?>&name=<?php echo $row_page1['seo_url']; ?>">
                                                                    <?php echo $row_page1['display_name'] ?>
                                                                </a>
                                                            </li>
                                                            <?php
                                                        }
                                                    }
                                                    ?>
                                                </ul>
                                            </li>
                                            <?php
                                        }
                                    }
                                    ?>
                                    <li><a href="image-gallery.php">Gallery</a></li>
                                    <li><a href="testimonials.php">Testimonials</a></li>
                                    <li><a href="blog.php">Blog</a></li>
                                    <li><a href="contact-us.php">contact us</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Main Navigation-->
</header>