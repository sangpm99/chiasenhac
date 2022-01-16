<?php
    include("./admin_header.php");
?>
    <div class="bg">
        <div class="card shadow">
            <h3 class="text-center mt-2 text-danger">THÊM TÀI KHOẢN</h3>
            <form method="POST" action="">
                <div class="mb-3">
                    <label for="exampleUser" class="form-label">Tên tài khoản</label>
                    <input type="text" name="txt-user" class="form-control" id="exampleUser" required>
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
                    <input type="password" name="txt-pass" class="form-control" id="exampleInputPassword1" required>
                </div>
                <button type="submit" name="btn-submit" class="btn btn-success">Thêm</button>
            </form>

            <?php
                include("./define.php");
                include("./config.php");
                if(isset($_POST['btn-submit'])){ //isset là kiểm tra biến có tồn tại hay không
                    $user = $_POST['txt-user'];
                    $pass = $_POST['txt-pass'];

                    //B2 : Thực hiện truy vấn
                    $sql = "INSERT INTO `account` (`id`, `user_name`, `pass_word`) VALUES (NULL, '$user', '$pass')";
                    $result = mysqli_query($conn,$sql);
                    //B3: Xử lý kết quả nếu mysqli_query thành công trả về true
                    if($result == true){
                        header('location:'.SITEURL.'/assets/php/admin_index.php');
                    }
                    else{
                        header('location:'.SITEURL.'/assets/php/error.php');
                    }
                }
                mysqli_close($conn);
            ?>
        </div>
    </div>
<?php
    include("./admin_footer.php");
?>