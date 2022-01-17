<?php
    include("./header.php");
    include("./define.php");
?>
    <div class="row">
        <div class="col-12">
            <h1 class="text-center text-danger">Nghe Nhạc</h1>
        </div>
    </div>
    <div class="row">

        <?php
            include("./config.php");
            $id_need = $_GET['id'];
            $sql = "SELECT * FROM song WHERE id=$id_need";
            $result = mysqli_query($conn,$sql);
            if(mysqli_num_rows($result) > 0){
                while($row = mysqli_fetch_assoc($result)){
        ?>
        <div class="col-12 my-5">
            <div class="row box-music">
                <div class="col-12 box-img2">
                    <img src="<?php echo $row['song_image']; ?>" alt="">
                </div>
            </div>
            <p class="text-center mt-2"><strong><?php echo $row['song_name']; ?></strong></p>
            <div class="row">
                <div class="col-12 box-music py-2">
                    <audio controls="controls">
                        <source src="<?php echo $row['music']; ?>" type ="audio/mpeg" />
                    </audio>
                </div>
            </div>
        </div>
        <?php
                }
            }
            mysqli_close($conn);
        ?>
    </div>
<?php
    include("./footer.php");
?>
