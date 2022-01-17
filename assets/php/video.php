<?php
    include("./admin_header.php");
?>
    <div class="row">
        <h1 class="text-danger text-center py-4">TẤT CẢ VIDEO</h1>
        <div class="col-12">
            <div class="row py-4 px-5">
                <div class="col-2">
                    <a href="./add_video.php" class="btn shadow bg-success text-white">Thêm video</a>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="row">
                <?php
                include("./define.php");
                include("config.php");
                $sql = "SELECT * FROM video ORDER BY id DESC";
                $result = mysqli_query($conn,$sql);
                
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
            ?>
                <div class="col-1 singer">
                    <a class="txt-bold" href="./update_video.php?id=<?php echo $row['id']; ?>"><?php echo $row['name']; ?></a>
                    <p>
                        <?php echo $row['author']; ?>
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