<?php
    include("./admin_header.php");
    include("./define.php");
    include("./config.php");
?>
    <div class="bg bg-song">
        <div class="card shadow">
            <div class="row">
                <div class="col-12">
                    <h3 class="text-center mt-2 text-danger">THÊM BÀI HÁT</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <form method="POST" action="">
                        <div class="mb-3">
                            <label class="form-label">Tên bài hát</label>
                            <input type="text" name="txt-name" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">ID ca sĩ</label>
                            <input type="number" name="txt-singer" class="form-control" required>
                        </div>
                        

                        <div class="mb-3">
                            <label class="form-label">Ngày phát hành</label>
                            <input class="form-control" name="txt-date" type="date" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Lượt Xem</label>
                            <input class="form-control" name="txt-view" type="number" required>
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Ảnh</label>
                            <input class="form-control" name="txt-image" type="file" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">File</label>
                            <input class="form-control" name="txt-music" type="file" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">ID chuyên Mục</label>
                            <input type="number" name="txt-category" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Chất lượng</label>
                            <input type="text" name="txt-quality" class="form-control" required>
                        </div>

                        <button type="submit" name="btn-submit" class="btn btn-success">Thêm</button>
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


                            $sql = "INSERT INTO `song` (`id`, `song_name`, `id_singer`, `song_date`, `song_view`, `song_image`, `music`, `id_category`, `quality`) VALUES (NULL, '$name', $id_singer, '$date', '$view', '$image', '$music', $id_category, '$quality');";
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