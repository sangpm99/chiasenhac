<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-song">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">SỬA BÀI HÁT</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <?php
                            $id_need = $_GET['id'];
                            $sql = "SELECT * FROM song WHERE id=$id_need";
                            $result = mysqli_query($conn,$sql);
                            if(mysqli_num_rows($result) > 0){
                                while($row = mysqli_fetch_assoc($result)){
                        ?>
                        <div class="mb-3">
                            <label class="form-label">Tên bài hát</label>
                            <input type="text" name="txt-name" class="form-control" required value="<?php echo $row['song_name']; ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">ID ca sĩ</label>
                            <input type="number" name="txt-singer" class="form-control" required value="<?php echo $row['id_singer']; ?>">
                        </div>
                        

                        <div class="mb-3">
                            <label class="form-label">Ngày phát hành</label>
                            <input class="form-control" name="txt-date" type="date" required value="<?php echo $row['song_date']; ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Lượt Xem</label>
                            <input class="form-control" name="txt-view" type="number" required value="<?php echo $row['song_view']; ?>">
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Ảnh</label>
                            <input class="form-control" name="txt-image" type="file" required value="<?php echo $row['song_image']; ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">File</label>
                            <input class="form-control" name="txt-music" type="file" required value="<?php echo $row['music']; ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">ID chuyên Mục</label>
                            <input type="number" name="txt-category" class="form-control" required value="<?php echo $row['id_category']; ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Chất lượng</label>
                            <input type="text" name="txt-quality" class="form-control" required value="<?php echo $row['quality']; ?>">
                        </div>

                        <button type="submit" name="btn-submit" class="btn btn-primary">Cập Nhật</button>
                        <a href="./delete_song.php?id=<?php echo $row['id']; ?>" class="btn shadow bg-danger text-white">Xóa Bài Hát</a>
                        <?php
                                }
                            }
                        ?>
                    </form>

                    <?php
                        if(isset($_POST['btn-submit'])){
                            $name = $_POST['txt-name'];

                            $id_singer = $_POST['txt-singer'];

                            $date = $_POST['txt-date'];

                            $view = $_POST['txt-view'];

                            $img = $_POST['txt-image'];
                            $image = "./assets/images/".$img;

                            $audio = $_POST['txt-music'];
                            $music = "./assets/musics/".$audio;

                            $id_category = $_POST['txt-category'];

                            $quality = $_POST['txt-quality'];


                            $sql = "UPDATE `song` SET `song_name` = '$name', `id_singer` = '$id_singer', `song_date` = '$date', `song_view` = '$view', `song_image` = '$image', `music` = '$music', `id_category` = '$id_category', `quality` = '$quality' WHERE `song`.`id` = $id_need;";
                            $result = mysqli_query($conn,$sql);
                            
                            if($result == true){
                                header('location:'.SITEURL.'/assets/php/admin_index.php');
                            }
                            else{
                                header('location:'.SITEURL.'/assets/php/error.php');
                            }
                        }
                    ?>
                </div>
            </div>
        </div>

        <div class="card">
            <h3 class="text-danger">Danh sách ID ca sĩ</h3>
            <div class="row">
                <div class="col-12">
                    <div class="boxes">
                        <div class="row">
                            <?php
                                $sql = "SELECT * FROM singer";
                                $result = mysqli_query($conn,$sql);
                                
                                if(mysqli_num_rows($result) > 0){
                                    while($row = mysqli_fetch_assoc($result)){
                            ?>
                                <div class="col-4">
                                    <span><strong><?php echo $row['id']; ?></strong></span>
                                    <span><?php echo $row['full_name']; ?></span>
                                </div>
                            <?php
                                    }
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            
            <h3 class="text-danger mt-5">Danh sách ID Chuyên Mục</h3>
            <div class="row">
                <div class="col-12">
                    <div class="boxes">
                        <div class="row">
                            <?php
                                $sql = "SELECT * FROM category";
                                $result = mysqli_query($conn,$sql);
                                
                                if(mysqli_num_rows($result) > 0){
                                    while($row = mysqli_fetch_assoc($result)){
                            ?>
                            <div class="col-6">
                                <span><strong><?php echo $row['id']; ?></strong></span>
                                <span><?php echo $row['name']; ?></span>
                            </div>
                            <?php
                                    }
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
    include("./admin_footer.php");
?>