<?php
    include("./admin_header.php");
?>
    <div class="row">
        <h1 class="text-danger text-center py-4">TẤT CẢ BÀI HÁT</h1>
        <div class="col-12">
            <div class="row py-4 px-5">
                <div class="col-2">
                    <a href="./add_song.php" class="btn shadow bg-success text-white">Thêm bài hát</a>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="row">
                <?php
                include("./define.php");
                include("config.php");
                $sql = "SELECT * FROM song ORDER BY id DESC";
                $result = mysqli_query($conn,$sql);
                
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
            ?>
                <div class="col-1 singer">
                    <?php
                        $img = $row['song_image'];
                        $image = substr("$img",16);
                    ?>
                    <a href="./update_song.php?id=<?php echo $row['id']; ?>">
                        <img class="shadow" src="../images/<?php echo $image; ?>" alt="Ảnh ca sĩ">
                    </a>
                    <p class="txt-bold text-center"><?php echo $row['song_name']; ?></p>
                    <p class="text-center">
                        <!-- Lấy tên ca sĩ từ bảng singer thông qua khóa ngoại id_singer của bảng song -->
                        <?php
                            mysqli_close($conn);
                            include("config.php");
                            $id_singer = $row['id_singer'];
                            $sql1 = "SELECT DISTINCT full_name FROM song,singer WHERE singer.id = $id_singer AND song.id_singer = singer.id";
                            $name_singer = $sql1;
                            $result1 = mysqli_query($conn,$sql1);
                            if(mysqli_num_rows($result1) > 0){
                                while($row = mysqli_fetch_assoc($result1)){
                                    echo $row['full_name'];
                                }
                            }
                        ?>
                        <!-- END -->
                    </p>
                </div>
            <?php
                    }
                }
                mysqli_close($conn);
            ?>
            </div>
        </div>
    </div>
<?php
    include("./admin_footer.php");
?>