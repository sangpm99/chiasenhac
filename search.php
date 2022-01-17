<?php
    include("./header.php");
?>

    <div class="row">
        <div class="col-12">
            <h1 class="text-center text-danger my-5">Tìm Kiếm</h1>
        </div>
        <?php
            include("./define.php");
            include("./config.php");
            if(count($_POST)>0) {
                $search=$_POST['search'];
                $sql = "select * from song where song_name like '%$search%'";
                $result = mysqli_query($conn,$sql);
            }
            echo '<div class = "col-12">';
            echo '<h1 class="text-center my-2">Kết quả tìm kiếm cho "'.$search.'"</h1>';
            echo '</div>';
            while($row = mysqli_fetch_array($result)) {
        ?>
        <div class="col-3">
            <div class="box px-2">
                <div class="box-img2">
                    <a href="./play.php?id=<?php echo $row['id']; ?>">
                        <img src="<?php echo $row['song_image']; ?>">
                    </a>
                </div>
                <div class="box-content">
                    <a class="txt txt-bold my-link" href="#"><?php echo $row['song_name']; ?></a>
                    <a class="sub-txt my-link" href="#">
                    
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
                        <!--  -->
                    </a>
                    <p class="txt-red">Lossless</p>
                </div>
            </div>
        </div>
        <?php
            }
            mysqli_close($conn);
        ?>
    </div>

<?php
    include_once("./footer.php");
?>
