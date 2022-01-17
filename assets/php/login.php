<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chia sẻ nhạc</title>
    <link rel="icon" href="../images/favicon.ico" type="image/x-icon" sizes="16x16"/>

    <!-- CSS Bootstrap Offline -->
    <link rel="stylesheet" href="../assets/bootstrapcss/bootstrap.min.css">
    <!-- CSS Custom -->
    <link rel="stylesheet" href="../css/style_login.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
</head>
<body>
    <div class="wrapper fadeInDown">
        <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Login Form -->
            <h3>ĐĂNG NHẬP</h3>
            <form action="" method="POST">
                <input type="text" id="login" class="fadeIn second" name="txt-user" placeholder="Tài Khoản" required>
                <input type="password" id="password" class="fadeIn third" name="txt-pass" placeholder="Mật Khẩu" required>
                <input type="submit" class="fadeIn fourth" name="btn-login" value="Đăng Nhập">
            </form>

            <?php
            include_once("./define.php");
            include_once("./config.php");

            if(isset($_POST['btn-login'])){ //isset là kiểm tra biến có tồn tại hay không
                $user = $_POST['txt-user'];
                $pass = $_POST['txt-pass'];

                //B2 : Thực hiện truy vấn
                $sql = "SELECT * FROM account WHERE user_name ='$user' AND pass_word='$pass'";
                $result = mysqli_query($conn,$sql);
                $count = mysqli_num_rows($result);
                if($count == 1){
                    header('location:'.SITEURL.'/assets/php/admin_index.php');
                }
                else
                {
                    header('location:'.SITEURL.'/assets/php/login.php');
                }
            }
        ?>
        </div>
    </div>

    <!-- JavaScript Bootstrap -->
    <script src="./assets/bootstrapjs/bootstrap.bundle.min.js"></script>
    <!-- JavaScript -->
    <script style="text/javascript" src="./assets/js/myscript.js"></script>
</body>
</html>
