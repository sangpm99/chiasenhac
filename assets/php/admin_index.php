<?php
    include("./admin_header.php");
?>
    <section>
        <div class="row">
            <!-- Taskbar -->
            <div class="col-3 my-menu">
                <div class="row">
                    <div class="col-4 mini-logo">
                        <img src="../images/logo.png" alt="">
                    </div>
                    <div class="col-4"></div>
                    <div class="col-2">
                        <i class="fas fa-bell text-gray"></i>
                    </div>
                    <div class="col-2">
                        <i class="fas fa-user-circle text-gray"></i>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 my-profile text-center py-4 image-round">
                        <img src="../images/admin.jpg" alt="admin">
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <p class="txt-bold text-white text-center">Admin Group 22</p>
                        <p class="sub-txt text-center">admingroup22@gmail.com</p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <p class="txt-menu txt-bold">DASHBOARDS</p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <ul class="menu-bar">
                            <li>
                                <a href="#overview">
                                    <p class="text-white txt-bold">
                                        <i class="far fa-sticky-note me-3"></i>
                                        Tổng quan
                                    </p>
                                </a>
                            </li>

                            <li>
                                <a href="#account">
                                    <p class="text-white txt-bold">
                                        <i class="fas fa-user me-3"></i>
                                        Quản Lý Tài Khoản
                                    </p>
                                </a>
                            </li>

                            <li>
                                <a href="#singer">
                                    <p class="text-white txt-bold">
                                        <i class="fas fa-microphone-alt me-3"></i>
                                        Quản Lý Ca Sĩ
                                    </p>
                                </a>
                            </li>

                            <li>
                                <a href="#song">
                                    <p class="text-white txt-bold">
                                        <i class="fas fa-music me-3"></i>
                                        Quản Lý Bài Hát
                                    </p>
                                </a>
                            </li>

                            <li>
                                <a href="#video">
                                    <p class="text-white txt-bold">
                                        <i class="fas fa-video me-3"></i>
                                        Quản Lý Video
                                    </p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <a href="http://localhost/chiasenhac" class="text-white txt-bold mx-5">ĐĂNG XUẤT<i class="fas fa-sign-out-alt px-2"></i></a>
                    </div>
                </div>
            </div>
            <!-- End Taskbar -->

            <!-- Main -->
            <div class="col-9 main">
                <div class="row">
                    <div class="col-2">
                        <i class="fas fa-bars"></i>
                    </div>

                    <div class="col-4">
                        
                    </div>

                    <div class="col-1">
                        <i class="far fa-envelope"></i>
                    </div>

                    <div class="col-1">
                        <i class="fas fa-inbox"></i>
                    </div>

                    <div class="col-1">
                        <i class="fas fa-reply"></i>
                    </div>

                    <div class="col-1">
                        <i class="fas fa-comment"></i>
                    </div>

                    <div class="col-2">
                        <p>VietNamese</p>
                    </div>
                </div>

                <div class="divider"></div>

                <div class="row py-5">
                    <div class="col-8">
                        <div class="row">
                            <div class="col-3 image-round ms-2">
                                <img src="../images/admin.jpg" alt="admin">
                            </div>
                            <div class="col-8 mt-4">
                                <h1>Welcome back, Admin!</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">

                    </div>
                </div>
                
                <!-- Overview -->
                <div id="overview"></div>
                <div class="row">
                    <div class="col-12">
                        <h3 class="py-3">Tổng Quan</h3>
                        <div class="overview">
                            <div class="box shadow">
                                <?php
                                    include('define.php');
                                    include("config.php");
                                    $sql = "SELECT * FROM account";
                                    $result = mysqli_query($conn,$sql);
                                    $i = 0;
                                    if(mysqli_num_rows($result) > 0){
                                        while($row = mysqli_fetch_assoc($result)){
                                            $i++;
                                        }
                                    }
                                    mysqli_close($conn);
                                ?>
                                    <h3 class="txt-blue text-center"><?php echo $i; ?></h3>
                                    <p class="text-center">Tài Khoản</p>
                            </div>
                            <div class="box shadow">
                                <?php
                                    include("config.php");
                                    $sql = "SELECT * FROM singer";
                                    $result = mysqli_query($conn,$sql);
                                    $i = 0;
                                    if(mysqli_num_rows($result) > 0){
                                        while($row = mysqli_fetch_assoc($result)){
                                            $i++;
                                        }
                                    }
                                    mysqli_close($conn);
                                ?>
                                <h3 class="txt-red text-center"><?php echo $i; ?></h3>
                                <p class="text-center">Ca Sĩ</p>
                            </div>
                            <div class="box shadow">
                                <?php
                                    include("config.php");
                                    $sql = "SELECT * FROM song";
                                    $result = mysqli_query($conn,$sql);
                                    $i = 0;
                                    if(mysqli_num_rows($result) > 0){
                                        while($row = mysqli_fetch_assoc($result)){
                                            $i++;
                                        }
                                    }
                                    mysqli_close($conn);
                                ?>
                                <h3 class="txt-orange text-center"><?php echo $i; ?></h3>
                                <p class="text-center">Bài Hát</p>
                            </div>
                            <div class="box shadow">
                                <?php
                                    include("config.php");
                                    $sql = "SELECT * FROM video";
                                    $result = mysqli_query($conn,$sql);
                                    $i = 0;
                                    if(mysqli_num_rows($result) > 0){
                                        while($row = mysqli_fetch_assoc($result)){
                                            $i++;
                                        }
                                    }
                                    mysqli_close($conn);
                                ?>
                                <h3 class="txt-green text-center"><?php echo $i; ?></h3>
                                <p class="text-center">Video</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Overview -->

                <!-- QL TK -->
                <div id="account"></div>
                <div class="row py-2">
                    <div class="col-12">
                        <h3>Quản Lý Tài Khoản</h3>
                        <a href="./add_account.php" class="btn shadow bg-success text-white">Thêm tài khoản</a>
                        <br>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">STT</th>
                                    <th scope="col">Tài khoản</th>
                                    <th scope="col">Mật khẩu</th>
                                    <th scope="col" colspan="2">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    include("config.php");
                                        $sql = "SELECT * FROM account";
                                        $result = mysqli_query($conn,$sql);
                                        $i = 1;
                                        if(mysqli_num_rows($result) > 0){
                                            while($row = mysqli_fetch_assoc($result)){

                                ?>
                                    <tr>
                                        <th scope="row"><?php echo $i; $i++; ?></th>
                                        <td><?php echo $row['user_name']; ?></td>
                                        <td>*****</td>
                                        <td>
                                            <a href="./update_account.php?id=<?php echo $row['id']; ?>"><i class="far fa-edit text-warning"></i></a>
                                        </td>
                                        <td>
                                            <i class="far fa-trash-alt text-danger"></i>
                                        </td>
                                    </tr>
                                <?php
                                    }
                                }
                                mysqli_close($conn);
                                ?>
                                    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- End Main -->
        </div>
    </section>
<?php
    include("./admin_footer.php");
?>