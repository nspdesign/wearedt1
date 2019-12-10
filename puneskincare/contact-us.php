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
        $PageIdGet = 4;
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

                <div class="row mb-50">
                    <div class="col-md-6 col-sm-6 col-xs-12 PageContent">
                        <h4 class="classic-title"><span>Get In Touch</span></h4>
                        <br>
                        <?php
                        if (isset($_POST['AddRecord'])) {
                            $Captcha = clean($_POST['Captcha']);
                            if ((isset($_POST["Captcha"]) && $_POST["Captcha"] != "" && $_SESSION["code"] == $_POST["Captcha"])) {
                                $Name = clean($_POST['Name']);
                                $EmailId = clean($_POST['EmailId']);
                                $mobile_no = clean($_POST['mobile_no']);
                                $Message1 = clean($_POST['Message']);
                                $created_at = date("Y-m-d H:i:s");

                                $Email_settings = getEmailSettings($conn);
                                $WebsiteSettings = getWebsiteSettings($conn);
                                $CompanyName = $WebsiteSettings['company_name'];
                                $CompanyWebsite = $WebsiteSettings['website'];
                                $Subject2 = $WebsiteSettings['company_name'] . " - Contact Us";
                                $Message2 = "Hello Admin,<br>"
                                        . "$Name have contacted Admin for some queries. Please check and revert.<br><br>"
                                        . "Name : $Name<br>"
                                        . "Email Id : $EmailId<br>"
                                        . "Mobile No : $mobile_no<br>"
                                        . "Message : $Message1<br>"
                                        . "Please contact me as soon as possible.<br><br>"
                                        . "--<br>"
                                        . "Thanks and Regards,<br>"
                                        . "$CompanyName<br>"
                                        . "$CompanyWebsite<br>";
                                // use wordwrap() if lines are longer than 70 characters
                                $Message2 = wordwrap($Message2, 70);
                                $MessageWithouHTML2 = "Hello Admin, " . $Name . "  have contacted Admin for some queries. Please check and revert. Name : " . $Name . ". Email Id : " . $EmailId . ". Mobile No : " . $mobile_no . ". Message : " . $Message1 . ". Please contact me as soon as possible. -- Thanks and Regards," . $CompanyName . " Admin";
                                $MessageWithouHTML2 = wordwrap($MessageWithouHTML2, 70);
                                //Create a new PHPMailer instance
                                $mail2 = new PHPMailer;
                                //$mail->isSMTP();
                                $mail2->SMTPDebug = 2;
                                $mail2->Debugoutput = 'html';
                                $mail2->Host = $Email_settings['host'];
                                $mail2->Port = $Email_settings['port_no'];
                                $mail2->SMTPAuth = true;
                                $mail2->Username = $Email_settings['username'];
                                $mail2->Password = $Email_settings['password'];
                                $mail2->setFrom($Email_settings['from_email'], $Email_settings['from_email_alias']);
                                $mail2->addReplyTo($Email_settings['reply_email'], $Email_settings['reply_email_alias']);
                                $mail2->addAddress($Email_settings['reply_email'], $Email_settings['reply_email_alias']);
                                $mail2->Subject = $Subject2;
                                $mail2->msgHTML($Message2);
                                $mail2->AltBody = $MessageWithouHTML2;
                                if (!$mail2->send()) {
                                    echo '<div class="alert alert-danger alert-dismissable">';
                                    echo '<i class="fa fa-ban"></i>';
                                    echo '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                                    echo '<b>Email Delivery Failed.</b>';
                                    echo '</div>';
                                    echo "Mailer Error: " . $mail->ErrorInfo . "<br>";
                                } else {
                                    $sql11 = "INSERT INTO form_contacts SET "
                                            . "id = NULL, "
                                            . "full_name = '$Name', "
                                            . "contact_no = '$mobile_no', "
                                            . "email_id = '$EmailId', "
                                            . "message = '$Message1', "
                                            . "created_at = '$created_at', "
                                            . "updated_at = '$created_at'";
                                    $conn->query($sql11);

                                    echo '<div class="alert alert-success alert-dismissable">';
                                    echo '<i class="fa fa-check"></i>';
                                    echo '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>';
                                    echo '<b>Mail Sent Successfully.</b>';
                                    echo '</div>';
                                }
                            }
                        }
                        ?>
                        <div class="pl-20 pr-20">
                            <form id="AddForm" action="<?php $_SERVER['PHP_SELF']; ?>" method="post" class="form-horizontal">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" name="Name" class="form-control" placeholder="Type your Name" required="required" maxlength="100">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="email" name="EmailId" class="form-control" placeholder="Type Your Email" required="required" maxlength="100">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="text" name="mobile_no" class="form-control" placeholder="Type Your Mobile No" required="required" minlength="10" maxlength="10">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <textarea name="Message" rows="3" class="form-control" placeholder="Type Your Message Here" required="required"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 pb-15">
                                        <div class="form-group">
                                            <p style="text-align:left; float: left; padding-top: 5px;"><img src="captcha.php"></p>
                                            <input type="text" name="Captcha" class="form-control" placeholder="Type as you see in the box" style="width: 80%; float: right;" maxlength="4" minlength="4" required="required">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group button">	
                                            <button type="submit" class="btn btn-success btn-block" name="AddRecord">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 PageContent">
                        <h4 class="classic-title"><span>Contact Us</span></h4>
                        <?php
                        echo $Page['page_content'];
                        ?>
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
        <!-- Bootstrap Validator -->
        <link rel="stylesheet" type="text/css" href="js/bootstrapvalidator/css/bootstrapValidator.css">
        <!-- Bootstrap Validator -->
        <script type="text/javascript" src="js/bootstrapvalidator/js/bootstrapValidator.js"></script>
        <!-- page script -->
        <script>
            $(document).ready(function () {
                $('#AddForm').bootstrapValidator({
                    excluded: [':disabled'],
                    feedbackIcons: {
                        valid: 'fa fa-check',
                        invalid: 'fa fa-remove',
                        validating: 'fa fa-refresh'
                    },
                    fields: {
                        Name: {
                            validators: {
                                notEmpty: {
                                    message: 'The name is required and cannot be empty'
                                }
                            }
                        },
                        EmailId: {
                            validators: {
                                emailAddress: {
                                    message: 'The value is not a valid email address'
                                }
                            }
                        },
                        mobile_no: {
                            validators: {
                                notEmpty: {
                                    message: 'The mobile number is required and cannot be empty'
                                },
                                integer: {
                                    message: 'The value is not a valid mobile number'
                                },
                                stringLength: {
                                    min: 10,
                                    max: 10,
                                    message: 'The mobile number must be 10 digits'
                                }
                            }
                        },
                        Message: {
                            validators: {
                                notEmpty: {
                                    message: 'The message is required and cannot be empty'
                                }
                            }
                        },
                        Captcha: {
                            validators: {
                                notEmpty: {
                                    message: 'The captcha is required and cannot be empty'
                                },
                                stringLength: {
                                    min: 4,
                                    message: 'The captcha must have at least 4 characters'
                                }
                            }
                        }
                    }
                });
            });
        </script>
    </body>
</html>