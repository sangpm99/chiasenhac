<?php
    include("./admin_header.php");
?>
    <div class="row">
        <h1 class="text-danger text-center py-4">TẤT CẢ CA SĨ</h1>
        <div class="col-12">
            <div class="row py-4 px-5">
                <div class="col-2">
                    <a href="./add_singer.php" class="btn shadow bg-success text-white">Thêm ca sĩ</a>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="row">
                <?php
                include("./define.php");
                include("config.php");
                $sql = "SELECT * FROM singer ORDER BY id DESC";
                $result = mysqli_query($conn,$sql);
                
                if(mysqli_num_rows($result) > 0){
                    while($row = mysqli_fetch_assoc($result)){
            ?>
                <div class="col-1 singer">
                    <?php
                        $img = $row['image'];
                        $image = substr("$img",16);
                    ?>
                    <a href="./update_singer.php?id=<?php echo $row['id']; ?>">
                        <img class="shadow" src="../images/<?php echo $image; ?>" alt="Ảnh ca sĩ">
                    </a>
                    <p class="text-center"><?php echo $row['full_name']; ?></p>
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