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
        $PageIdGet = 2;
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

                <?php
                $ImageAlbums = getImageAlbumsAll($conn);
                if ($ImageAlbums) {
                    ?>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 mt-50">
                            <div class="row">
                                <?php
                                foreach ($ImageAlbums as $ImageAlbum) {
                                    $AlbumIdDb = $ImageAlbum['id'];
                                    $Images = getSingleImage($conn, $AlbumIdDb);
                                    ?>
                                    <div class="col-md-4 pt-20 pb-20 hvr-glow">
                                        <p class="text-center">
                                            <a href="images.php?id=<?php echo $AlbumIdDb; ?>">
                                                <img src="<?php echo IMAGE_PATH . $Images[1]['id'] . '/' . $Images[1]['file_name']; ?>" class="img-responsive imageheight270" alt="<?php echo $Images[0]['alt_text']; ?>" title="<?php echo $Images[0]['image_title']; ?>"><br>
                                                <strong class="album_name"><?php echo $ImageAlbum['album_name']; ?></strong>
                                            </a>
                                        </p>
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
            </div>
        </section>

        <?php include './footer.php'; ?>
    </body>
</html>