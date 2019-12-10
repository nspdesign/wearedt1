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
        $AlbumIdGet = clean($_GET['id']);
        $AlbumIdGet = filter_var($AlbumIdGet, FILTER_VALIDATE_INT);
        $Albums = getImageAlbumById($conn, $AlbumIdGet);
        ?>
        <?php
        if ($Albums['meta_title'] != "" || $Albums['meta_title'] != NULL) {
            ?>
            <title><?php echo $Albums['meta_title']; ?></title>
            <?php
        } else {
            ?>
            <title><?php echo $Albums['album_name']; ?> | Image Gallery | Dr. Rane's Skin and Hair Clinic</title>
            <?php
        }
        ?>
        <meta name="keywords" content="<?php echo $Albums['meta_keywords']; ?>">
        <meta name="description" content="<?php echo $Albums['meta_description']; ?>">
    </head>
    <body>
        <?php include './navbar.php'; ?>

        <section class="inner-banner2 clearfix">
            <div class="container clearfix">
                <h2><?php echo $Albums['album_name']; ?></h2>
            </div>
        </section>
        <section class="breadcumb-wrapper">
            <div class="container clearfix">
                <ul class="breadcumb">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="image-gallery.php">Gallery</a></li>
                    <li><span><?php echo $Albums['album_name']; ?></span></li>
                </ul>
            </div>
        </section>

        <!-- We offer Different Services-->
        <section class="about-tab-box sectpad">
            <div class="container clearfix">
                <div class="row pb-50">
                    <?php
                    if ($Albums['description'] != NULL || $Albums['description'] != "") {
                        ?>
                        <div class="col-md-12 col-sm-12 col-xs-12 pb-20">

                            <?php echo $Albums['description']; ?>
                            <hr>
                        </div>
                        <?php
                    }
                    ?>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-12 mt-50">
                        <div class="popup-gallery">
                            <div class="row">
                                <?php
                                $sql1 = "SELECT * FROM images "
                                        . "WHERE album_name_id = $AlbumIdGet "
                                        . "ORDER BY sorting_order ASC";
                                $result1 = $conn->query($sql1);
                                if ($result1->num_rows > 0) {
                                    while ($row1 = $result1->fetch_assoc()) {
                                        $ImageId = $row1['id'];
                                        $sql2 = "SELECT * FROM media "
                                                . "WHERE collection_name LIKE 'images' AND model_type LIKE '%Image' AND model_id = $ImageId "
                                                . "ORDER BY order_column ASC";
                                        $result2 = $conn->query($sql2);
                                        if ($result2->num_rows > 0) {
                                            while ($row2 = $result2->fetch_assoc()) {
                                                ?>
                                                <div class="col-md-3 pt-15 pb-15 hvr-glow">
                                                    <a data-fancybox="mygallery" href="<?php echo IMAGE_PATH . $row2['id'] . '/' . $row2['file_name']; ?>" title="<?php echo $row1['image_title']; ?>">
                                                        <img class="imageheight270" src="<?php echo IMAGE_PATH . $row2['id'] . '/' . $row2['file_name']; ?>" alt="<?php echo $row1['alt_text']; ?>" title="<?php echo $row1['image_title']; ?>" />
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
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>