<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-singer">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">CHỈNH SỬA CA Sĩ</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <?php
                            $id_need = $_GET['id'];
                            $sql = "SELECT * FROM singer WHERE id=$id_need";
                            $result = mysqli_query($conn,$sql);
                            if(mysqli_num_rows($result) > 0){
                                while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <div class="row">
                            <div class="col-4 singer py-2">
                                <?php
                                    $img = $row['image'];
                                    $image = substr("$img",16);
                                ?>
                                <img src="../images/<?php echo $image; ?>" alt="">
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleUser" class="form-label">Tên ca sĩ</label>
                            <input type="text" name="txt-name" class="form-control" id="exampleUser" required value="<?php echo $row['full_name']; ?>">
                        </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Ảnh</label>
                            <input class="form-control" name="txt-image" type="file" id="formFile" required>
                        </div>
                        <button type="submit" name="btn-submit" class="btn btn-primary">Cập nhật</button>
                        <a href="./delete_singer.php?id=<?php echo $row['id']; ?>" class="btn shadow bg-danger text-white">Xóa ca sĩ</a>
                        <?php
                                }
                            }
                        ?>
                    </form>

                    <?php
                        if(isset($_POST['btn-submit'])){
                            $name = $_POST['txt-name'];
                            $img2 = $_POST['txt-image'];
                            $image2 = "./assets/images/".$img2;
                            // $image = "./assets/images/".$img;


                            $sql = "UPDATE `singer` SET `full_name` = '$name', `image` = '$image2' WHERE `singer`.`id` = $id_need";
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