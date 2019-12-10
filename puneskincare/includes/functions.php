<?php

//Function to sanitize values received from the form. Prevents SQL injection
function clean($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

function getBannerOrSlider($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM banners_or_sliders WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM banners_or_sliders WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getBannerByCategory($conn, $cat_id, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM banners_managements WHERE display_status LIKE 'Yes' AND banner_category_id = $cat_id ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM banners_managements WHERE display_status LIKE 'Yes' AND banner_category_id = $cat_id ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getBannerAdsByCategory($conn, $cat_id, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM business_ads WHERE display_status LIKE 'Yes' AND category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM business_ads WHERE display_status LIKE 'Yes' AND category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getTestimonials($conn, $cat_id, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM testimonials WHERE category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM testimonials WHERE category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getServicesBlocks($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM services_blocks WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM services_blocks WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getCountBlocks($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM count_blocks WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM count_blocks WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getTeamBlocks($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM team_members WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM team_members WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getNewsAll($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM news WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM news WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getNewsById($conn, $id) {
    $sql_function = "SELECT * FROM news WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getQuoteOfTheDays($conn) {
    $todaysDate = date("Y-m-d");
    $sql_function = "SELECT * FROM quote_of_the_days WHERE date LIKE '$todaysDate' AND display_status LIKE 'Yes' ORDER BY id DESC LIMIT 0,1";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getLatestShortNews($conn, $type) {
    $sql_function = "SELECT * FROM short_news WHERE news_type LIKE '$type' ORDER BY id DESC LIMIT 0,1";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getQuoteOfTheDaysRandom($conn) {
    $sql_function = "SELECT * FROM quote_of_the_days WHERE display_status LIKE 'Yes' ORDER BY id DESC LIMIT 0,1";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getEventsAll($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM events WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM events WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getEventById($conn, $id) {
    $sql_function = "SELECT * FROM events WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getImageAlbumsAll($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM image_albums WHERE display_status LIKE 'Yes' AND category_name_id = 1 ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM image_albums WHERE display_status LIKE 'Yes' AND category_name_id = 1 ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getImageAlbumById($conn, $Album_id) {
    $sql_function = "SELECT * FROM image_albums WHERE display_status LIKE 'Yes' AND id = $Album_id";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getProductsAlbumsAll($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM image_albums WHERE display_status LIKE 'Yes' AND category_name_id = 2 ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM image_albums WHERE display_status LIKE 'Yes' AND category_name_id = 2 ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getSingleImage($conn, $Album_id) {
    $sql_function = "SELECT * FROM images WHERE album_name_id = $Album_id ORDER BY sorting_order ASC, id DESC LIMIT 0,1";
    $result_function = $conn->query($sql_function);
    $Return_array = array();
    if ($result_function->num_rows > 0) {
        $row_function = $result_function->fetch_assoc();
        $Return_array[] = $row_function;

        $ImageId = $row_function['id'];

        $sql_function_2 = "SELECT * FROM media WHERE collection_name LIKE 'images' AND model_type LIKE '%Image' AND model_id = $ImageId ORDER BY order_column ASC LIMIT 0,1";
        $result_function_2 = $conn->query($sql_function_2);
        if ($result_function_2->num_rows > 0) {
            $row_function_2 = $result_function_2->fetch_assoc();
            $Return_array[] = $row_function_2;
            return $Return_array;
        }
    } else {
        return NULL;
    }
}

function getStaticPageById($conn, $id) {
    $sql_function = "SELECT * FROM static_pages1s WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getDynamicPageById($conn, $id) {
    $sql_function = "SELECT * FROM pages WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getContentBlockById($conn, $id) {
    $sql_function = "SELECT * FROM content_block1s WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getDynamicPageCategoryById($conn, $id) {
    $sql_function = "SELECT * FROM page_categories WHERE display_status LIKE 'Yes' AND id = $id";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getPagesByCategoryId($conn, $CategoryId, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM pages WHERE display_status LIKE 'Yes' AND category_name_id = $CategoryId ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM pages WHERE display_status LIKE 'Yes' AND category_name_id = $CategoryId ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getFixedLengthString($string, $length) {
    if (strlen($string) > $length) {
        $pos = strpos($string, ' ', $length);
        $FinalString = substr($string, 0, $pos);
        $FinalString = $FinalString . "... ";
    } else {
        $FinalString = $string;
    }
    return $FinalString;
}

function getBlogCategories($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM blog_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM blog_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getBlogPostAll($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM blog_posts WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM blog_posts WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getBlogPostAllByCategoryId($conn, $id, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM blog_posts a, blog_category_blog_post b WHERE a.display_status LIKE 'Yes' AND a.id = b.blog_post_id AND b.blog_category_id = $id ORDER BY a.sorting_order ASC, a.id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM blog_posts a, blog_category_blog_post b WHERE a.display_status LIKE 'Yes' AND a.id = b.blog_post_id AND b.blog_category_id = $id ORDER BY a.sorting_order ASC, a.id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getBlogAuthorById($conn, $id) {
    $sql_function = "SELECT * FROM blog_authors WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getBlogCategoryById($conn, $id) {
    $sql_function = "SELECT * FROM blog_categories WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getBlogPostById($conn, $id) {
    $sql_function = "SELECT * FROM blog_posts WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getFAQCategories($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM faq_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM faq_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getFAQQuestionsByCategoryId($conn, $cat_id, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM questions WHERE category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM questions WHERE category_name_id = $cat_id ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function generate_activation_code($length = 6) {
    $chars = "123456789";
    $ActivationCode = substr(str_shuffle($chars), 0, $length);
    return $ActivationCode;
}

function getEmailSettings($conn) {
    $sql_email = "SELECT * FROM email_settings ORDER BY id DESC LIMIT 0,1";
    $result_email = $conn->query($sql_email);
    if ($result_email->num_rows == 1) {
        $row_email = $result_email->fetch_assoc();
        return $row_email;
    } else {
        return NULL;
    }
}

function getWebsiteSettings($conn) {
    $sql_email = "SELECT * FROM website_settings ORDER BY id DESC LIMIT 0,1";
    $result_email = $conn->query($sql_email);
    if ($result_email->num_rows == 1) {
        $row_email = $result_email->fetch_assoc();
        return $row_email;
    } else {
        return NULL;
    }
}

function editorfix($value) {
// sometimes FCKeditor wants to add \r\n, so replace it with a space 
// sometimes FCKeditor wants to add <p>&nbsp;</p>, so replace it with nothing
    $order = array("\\r\\n", "\\n", "\\r", "<p>&nbsp;</p>");
    $replace = array(" ", " ", " ", "");
    $value = str_replace($order, $replace, $value);
    return $value;
}

// Function to get the client IP address
function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if (getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if (getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if (getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if (getenv('HTTP_FORWARDED'))
        $ipaddress = getenv('HTTP_FORWARDED');
    else if (getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}

function os_info($uagent) {
    // the order of this array is important
    global $uagent;
    $oses = array(
        'Win311' => 'Win16',
        'Win95' => '(Windows 95)|(Win95)|(Windows_95)',
        'WinME' => '(Windows 98)|(Win 9x 4.90)|(Windows ME)',
        'Win98' => '(Windows 98)|(Win98)',
        'Win2000' => '(Windows NT 5.0)|(Windows 2000)',
        'WinXP' => '(Windows NT 5.1)|(Windows XP)',
        'WinServer2003' => '(Windows NT 5.2)',
        'WinVista' => '(Windows NT 6.0)',
        'Windows 7' => '(Windows NT 6.1)',
        'Windows 8' => '(Windows NT 6.2)',
        'WinNT' => '(Windows NT 4.0)|(WinNT4.0)|(WinNT)|(Windows NT)',
        'OpenBSD' => 'OpenBSD',
        'SunOS' => 'SunOS',
        'Ubuntu' => 'Ubuntu',
        'Android' => 'Android',
        'Linux' => '(Linux)|(X11)',
        'iPhone' => 'iPhone',
        'iPad' => 'iPad',
        'MacOS' => '(Mac_PowerPC)|(Macintosh)',
        'QNX' => 'QNX',
        'BeOS' => 'BeOS',
        'OS2' => 'OS/2',
        'SearchBot' => '(nuhk)|(Googlebot)|(Yammybot)|(Openbot)|(Slurp)|(MSNBot)|(Ask Jeeves/Teoma)|(ia_archiver)'
    );
    $uagent = strtolower($uagent ? $uagent : $_SERVER['HTTP_USER_AGENT']);
    foreach ($oses as $os => $pattern)
        if (preg_match('/' . $pattern . '/i', $uagent))
            return $os;
    return 'Unknown';
}

function SendSMS($hostUrl) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $hostUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_POST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); // change to 1 to verify cert
    curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
    if (!$result = curl_exec($ch)) {
        return NULL;
    }
    return $result;
}

function getManufacturers($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM manufacturers WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM manufacturers WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getManufacturerById($conn, $id) {
    $sql_function = "SELECT * FROM manufacturers WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getSingleProductImage($conn, $ProdId) {
    $sql_function_2 = "SELECT * FROM media WHERE collection_name LIKE 'product_images' AND model_type LIKE '%ProductsManagement' AND model_id = $ProdId ORDER BY order_column ASC LIMIT 0,1";
    $result_function_2 = $conn->query($sql_function_2);
    if ($result_function_2->num_rows > 0) {
        $row_function_2 = $result_function_2->fetch_assoc();
        return $row_function_2;
    } else {
        return NULL;
    }
}

function getProductCategories($conn, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM prd_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM prd_categories WHERE display_status LIKE 'Yes' ORDER BY sorting_order ASC, id DESC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getProductCategoriesCount($conn, $id) {
    $sql_function = "SELECT * FROM prd_category_products_management p, prd_categories pc WHERE p.prd_category_id = pc.id AND p.prd_category_id = $id AND pc.display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        return $result_function->num_rows;
    } else {
        return 0;
    }
}

function getProductCategoryById($conn, $id) {
    $sql_function = "SELECT * FROM prd_categories WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getProductById($conn, $id) {
    $sql_function = "SELECT * FROM products_managements WHERE id = $id AND display_status LIKE 'Yes'";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows == 1) {
        $row_function = $result_function->fetch_assoc();
        return $row_function;
    } else {
        return NULL;
    }
}

function getProductAllImagesById($conn, $ProdId) {
    $sql_function = "SELECT * FROM media WHERE collection_name LIKE 'product_images' AND model_type LIKE '%ProductsManagement' AND model_id = $ProdId ORDER BY order_column ASC";
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function getSingleImagesByContentId($conn, $ContentId, $Limit = 0) {
    if ($Limit > 0) {
        $sql_function = "SELECT * FROM media WHERE collection_name LIKE 'photo' AND model_type LIKE '%ContentBlock1' AND model_id = $ContentId ORDER BY order_column ASC LIMIT 0,$Limit";
    } else {
        $sql_function = "SELECT * FROM media WHERE collection_name LIKE 'photo' AND model_type LIKE '%ContentBlock1' AND model_id = $ContentId ORDER BY order_column ASC";
    }
    $result_function = $conn->query($sql_function);
    if ($result_function->num_rows > 0) {
        $Return_array = array();
        while ($row_function = $result_function->fetch_assoc()) {
            $Return_array[] = $row_function;
        }
        return $Return_array;
    } else {
        return NULL;
    }
}

function friendly_seo_string($vp_string) {
    $vp_string = trim($vp_string);
    $vp_string = html_entity_decode($vp_string);
    $vp_string = strip_tags($vp_string);
    $vp_string = strtolower($vp_string);
    $vp_string = preg_replace('~[^ a-z0-9_\.]~', ' ', $vp_string);
    $vp_string = preg_replace('~ ~', '-', $vp_string);
    $vp_string = preg_replace('~-+~', '-', $vp_string);
    return $vp_string;
}

?>