<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-singer">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">THÊM CA Sĩ</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <div class="mb-3">
                            <label for="exampleUser" class="form-label">Tên ca sĩ</label>
                            <input type="text" name="txt-name" class="form-control" id="exampleUser" required>
                        </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Ảnh</label>
                            <input class="form-control" name="txt-image" type="file" id="formFile" required>
                        </div>
                        <button type="submit" name="btn-submit" class="btn btn-success">Thêm</button>
                    </form>

                    <?php
                        if(isset($_POST['btn-submit'])){
                            $name = $_POST['txt-name'];
                            $img = $_POST['txt-image'];
                            $image = "./assets/images/".$img;


                            $sql = "INSERT INTO `singer` (`id`, `full_name`, `image`) VALUES (NULL, '$name', '$image')";
                            $result = mysqli_query($conn,$sql);
                            
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
        </div>
    </div>
<?php
    include("./admin_footer.php");
?>