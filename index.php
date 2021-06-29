<?php
require 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Muhammad Hasbi Assidiqqi">

    <title>Selamat Datang di Website Kabupaten Bengkalis</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-home.css" rel="stylesheet">

    <!-- My FavIcon -->
    <link rel="shortcut icon" href="admin/dist/images/ic_bengkalis.png">

</head>

<body>
    <?php include 'header.php' ?>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="berita.php">Berita</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="foto.php">Galeri</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cctv.php">CCTV</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                        href="https://www.google.com/maps/place/Kabupaten+Bengkalis,+Riau/@1.5249345,100.5992111,8z/data=!3m1!4b1!4m5!3m4!1s0x31d3e3d31c50686d:0x3039d80b220cde0!8m2!3d1.4139187!4d101.6157773"
                        target="=_blank">Lokasi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pengaduan.php">Pengaduan</a>
                </li>
                <li class="nav-item dropdown">
                    <span class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Statistik
                    </span>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="statistik-umur.php">Umur</a>
                        <a class="dropdown-item" href="statistik-agama.php">Agama</a>
                        <a class="dropdown-item" href="statistik-perkawinan.php">Perkawinan</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <span class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Informasi Kabupaten
                    </span>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="identitas.php">Identitas</a>
                        <a class="dropdown-item" href="wilayah-administrasi.php">Wilayah Administrasi</a>
                        <a class="dropdown-item" href="pemerintahan.php">Pemerintahan</a>
                        <a class="dropdown-item" href="bantuan.php">Bantuan</a>
                        <a class="dropdown-item" href="sejarah.php">Sejarah</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <span class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Pariwisata
                    </span>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="wisata.php">Wisata</a>
                        <a class="dropdown-item" href="kuliner.php">Kuliner</a>
                        <a class="dropdown-item" href="penginapan.php">Penginapan</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <!-- carousel -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <?php
            $i=0;
            $koneksi = koneksiUas();
            $data = mysqli_query($koneksi, "SELECT * FROM slider ORDER BY id DESC");
            while ($row = mysqli_fetch_array($data)){
            ?>
            <li data-target="#carouselExampleIndicators" data-slide-to="<?php $i ?>"
                class="<?php if ($i == 0){echo 'active';}else{echo 'notactive';}?>"></li>
            <?php
            $i++;
            }
            ?>
        </ol>
        <div class="carousel-inner">
            <?php
            $i=0;
            $koneksi = koneksiUas();
            $data = mysqli_query($koneksi, "SELECT * FROM slider ORDER BY id DESC");
            while ($row = mysqli_fetch_array($data)){
            ?>
            <div class="carousel-item <?php if ($i == 0){echo 'active';}else{echo 'notactive';}?>">
                <img class="d-block w-100" src="admin/dist/images/<?= $row['gambar'];?>" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <p><?= $row['deskripsi'];?></p>
                </div>
            </div>
            <?php
            $i++;
            }
            ?>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Page Content -->
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <div class="title">
                <h3>BERITA <span>TERBARU</span></h3>
                <hr>
            </div>

            <!-- Blog Post -->
            <?php
            $i=0;
            $koneksi = koneksiUas();
            $data = mysqli_query($koneksi, "SELECT * FROM berita ORDER BY id ASC LIMIT 0,2");
            while ($row = mysqli_fetch_array($data)){
            ?>
            <div class="card mb-4">
                <img class="card-img-top" src="admin/dist/images/<?= $row['gambar'];?>" alt="Card image cap">
                <div class="card-body">
                    <h3 class="card-title"><?= $row['judul'];?></h3>
                    <p class="card-text"><?php echo substr($row['deskripsi'], 0,230);?>
                    </p>
                    <a href="detail-berita.php?id=<?=$row['id']?>" class="btn btn-success">Read More &rarr;</a>
                </div>
                <div class="card-footer text-muted">
                    <p> Posted on <?= $row['tanggal'];?></p>
                </div>
            </div>
            <?php
            $i++;
            }
            ?>
        </div>

        <!-- Widgets Column -->
        <div class="col-md-4">

            <!-- Berita Widget -->
            <div class="card my-4">
                <h5 class="card-header"><img src="admin/dist/images/ic_berita.png" width="24px" height="24px" alt="">
                    Berita
                    Terbaru</h5>
                <div class="card-body">
                    <ul>
                        <?php
                        $i=0;
                        $koneksi = koneksiUas();
                        $data = mysqli_query($koneksi, "SELECT * FROM berita ORDER BY id DESC LIMIT 0,6");
                        while ($row = mysqli_fetch_array($data)){
                        ?>
                        <li>
                            <a href="detail-berita.php?id=<?=$row['id']?>">
                                <img src="admin/dist/images/<?= $row['gambar'];?>">
                                <h2 class="content-news-first"><?= $row['judul'];?></h2>
                            </a>
                            <small><i class="fa fa-clock-o" aria-hidden="true"></i> <?= $row['tanggal'];?></small>
                        </li>
                        <?php
                        $i++;
                        }
                        ?>
                    </ul>
                </div>
            </div>

            <!-- Agenda Widget -->
            <div class="card my-4">
                <h5 class="card-header"><img src="admin/dist/images/ic_agenda.png" width="24px" height="24px" alt="">
                    Agenda</h5>
                <div class="card-body">
                    <ul>
                        <?php
                        $i=0;
                        $koneksi = koneksiUas();
                        $data = mysqli_query($koneksi, "SELECT * FROM agenda ORDER BY id DESC LIMIT 0,6");
                        while ($row = mysqli_fetch_array($data)){
                        ?>
                        <li>
                            <span>
                                <img src="admin/dist/images/<?= $row['gambar'];?>">
                                <h2 class="content-news-first"><?= $row['judul'];?></h2>
                                <small><i class="fa fa-clock-o"></i> <?= $row['tanggal'];?></small>
                            </span>
                        </li>
                        <?php
                        $i++;
                        }
                        ?>
                    </ul>
                </div>
            </div>

        </div>

    </div>
    <!-- /.row -->

    <?php include 'information.php' ?>
    <?php include 'footer.php' ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Fontawesome Script -->
    <script src="https://kit.fontawesome.com/425c04640d.js" crossorigin="anonymous"></script>

</body>

</html>