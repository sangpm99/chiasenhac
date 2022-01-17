<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-video">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">CHỈNH SỬA VIDEO</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <?php
                            $id_need = $_GET['id'];
                            $sql = "SELECT * FROM video WHERE id=$id_need";
                            $result = mysqli_query($conn,$sql);
                            if(mysqli_num_rows($result) > 0){
                                while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <div class="mb-3">
                            <label for="exampleVideo" class="form-label">Video</label>
                            <input class="form-control" name="txt-vd" type="file" id="formFile" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleName" class="form-label">Tên video</label>
                            <input type="text" name="txt-name" class="form-control" id="exampleName" required value="<?php echo $row['name']; ?>">
                        </div>
                        <div class="mb-3">
                            <label for="exampleAuthor" class="form-label">Tác giả</label>
                            <input type="text" name="txt-author" class="form-control" id="exampleAuthor" required value="<?php echo $row['author']; ?>">
                        </div>
                        <button type="submit" name="btn-submit" class="btn btn-primary">Cập nhật</button>
                        <a href="./delete_video.php?id=<?php echo $row['id']; ?>" class="btn shadow bg-danger text-white">Xóa video</a>
                        <?php
                                }
                            }
                        ?>
                    </form>

                    <?php
                        if(isset($_POST['btn-submit'])){
                            $vd = $_POST['txt-vd'];
                            $video = "./assets/videos/".$vd;
                            $name = $_POST['txt-name'];
                            $author = $_POST['txt-author'];


                            $sql = "UPDATE `video` SET `link` = '$video', `name` = '$name', `author` = '$author' WHERE `video`.`id` = $id_need";
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