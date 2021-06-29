<?php
require 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Muhammad Hasbi Assidiqqi">

    <title>Galeri Bengkalis</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-home.css" rel="stylesheet">

    <!-- My CSS -->
    <link rel="stylesheet" href="css/style.css">

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
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="berita.php">Berita</a>
                </li>
                <li class="nav-item active">
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

    <!-- Page Content -->
    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <div class="title">
                <h3>GALERI <span>BENGKALIS</span></h3>
                <hr>
            </div>

            <section id="news-main">
                <div class="row">
                    <?php
                    $i=0;
                    $koneksi = koneksiUas();

                    $batas = 6;
                    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1;
                    $halaman_awal = ($halaman>1) ? ($halaman * $batas) - $batas : 0;

                    $previous = $halaman - 1;
                    $next = $halaman + 1;

                    $data = mysqli_query($koneksi,"SELECT * FROM galeri_foto");
                    $jumlah_data = mysqli_num_rows($data);
                    $total_halaman = ceil($jumlah_data / $batas);

                    $data_galeri = mysqli_query($koneksi,"SELECT * FROM galeri_foto ORDER BY id DESC LIMIT $halaman_awal, $batas");
                    $nomor = $halaman_awal+1;
                    while ($sql = mysqli_fetch_array($data_galeri)){
                    ?>
                    <div class="col-md-4">
                        <div class="pop">
                            <img src="admin/dist/images/<?= $sql['gambar'];?>" style="width:100%; height: 170px;"
                                class="img-fluid" alt="...">
                            <p><?= $sql['judul'];?></p>
                        </div>
                    </div>
                    <?php
                    $i++;
                    }
                    ?>
                </div>
            </section>

            <!-- image preview -->
            <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <button type="button" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <img src="" class="imagepreview" style="width: 100%; height: 100%;">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                <ul class="pagination" role="navigation">
                    <li class="page-item disabled" aria-disabled="true" aria-label="« Previous">
                        <a class="page-link" <?php if($halaman > 1){ echo "href='?halaman=$previous'"; } ?>>‹</a>
                    </li>
                    <?php
                    for($x=1;$x<=$total_halaman;$x++){
                    ?>
                    <li class="page-item"><a class="page-link" href="?halaman=<?php echo $x ?>"><?php echo $x; ?></a>
                    </li>
                    <?php
                    }
                    ?>
                    <li class="page-item">
                        <a class="page-link" rel="next"
                            <?php if($halaman < $total_halaman) { echo "href='?halaman=$next'"; } ?>
                            aria-label="Next »">›</a>
                    </li>
                </ul>
            </div>

        </div>

        <!-- Widgets Column -->
        <div class="col-md-4">

            <!-- Kategori Widget -->
            <div class="card my-4">
                <h5 class="card-header"><img src="admin/dist/images/ic_berita.png" width="24px" height="24px" alt="">
                    Kategori</h5>
                <div class="card-body">
                    <div class="paginition left">
                        <ul>
                            <li class="active" style="width: 47%;"><a href="foto.php">Foto</a></li>
                            <li style="width: 47%;"><a href="video.php">Video</a></li>
                        </ul>
                    </div>
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

    <?php include 'information.php' ?>
    <?php include 'footer.php' ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Fontawesome Script -->
    <script src="https://kit.fontawesome.com/425c04640d.js" crossorigin="anonymous"></script>

    <!-- Image Preview -->
    <script>
    $(function() {
        $('.pop').on('click', function() {
            $('.imagepreview').attr('src', $(this).find('img').attr('src'));
            $('#imagemodal').modal('show');
        });
    });
    </script>

</body>

</html>