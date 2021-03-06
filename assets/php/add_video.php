<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-video">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">THÊM VIDEO</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <div class="mb-3">
                            <label for="exampleVideo" class="form-label">Video</label>
                            <input class="form-control" name="txt-vd" type="file" id="formFile" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleName" class="form-label">Tên video</label>
                            <input type="text" name="txt-name" class="form-control" id="exampleName" required>
                        </div>
                        <div class="mb-3">
                            <label for="exampleAuthor" class="form-label">Tác giả</label>
                            <input type="text" name="txt-author" class="form-control" id="exampleAuthor" required>
                        </div>
                        <button type="submit" name="btn-submit" class="btn btn-success">Thêm</button>
                    </form>

                    <?php
                        if(isset($_POST['btn-submit'])){
                            $vd = $_POST['txt-vd'];
                            $video = "./assets/videos/".$vd;
                            $name = $_POST['txt-name'];
                            $author = $_POST['txt-author'];


                            $sql = "INSERT INTO `video` (`id`, `link`, `name` , `author`) VALUES (NULL, '$video', '$name', '$author')";
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