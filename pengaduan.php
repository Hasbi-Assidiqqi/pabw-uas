<?php
require_once "functions.php";
$koneksi = koneksiUas();


if(isset($_POST["create"])){
    if(createLapor($_POST) > 0){
        echo"<script>
        alert('Pesan berhasil dikirim!');
        document.location.href='pengaduan.php';
        </script>";
    }
    else{
        echo "<script>
        alert('Pesan gagal dikirim!');
        document.location.href='pengaduan.php';
        </script>";
        echo mysqli_error($koneksi);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Muhammad Hasbi Assidiqqi">

    <title>Pengaduan Masyarakat Bengkalis</title>

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
                    <a class="nav-link active" href="pengaduan.php">Pengaduan</a>
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
                <h3>LAYANAN PENGADUAN <span>MASYARAKAT BENGKALIS</span></h3>
                <hr>
            </div>
            <section class="contact">

                <form action="" method="POST">
                    <div class="complaint-form-box">
                        <div class="select-complaint">Sampaikan Laporan Anda</div>
                        <div class="choose-classification">Pilih Tipe Laporan</div>
                        <div class="btn-group btn-complaint-type" id="classification_complaint" data-toggle="buttons">
                            <label class="btn btn-default active">
                                <input type="radio" name="tipe" class="sr-only"
                                    required=""><span>PENGADUAN</span></label>
                            <label class="btn btn-default">
                                <input type="radio" name="tipe" class="sr-only"
                                    required=""><span>ASPIRASI</span></label>
                            <label class="btn btn-default">
                                <input type="radio" name="tipe" class="sr-only"
                                    required=""><span>PERMOHONAN</span></label>
                        </div>
                    </div>

                    <div class="content">
                        <div class="col-lg-5 formBx">
                            <input type="text" name="nama_lengkap" id="" placeholder="Nama Lengkap">
                        </div>
                        <div class="col-lg-5 formBx">
                            <input type="email" name="email" id="" placeholder="Email">
                        </div>
                        <div class="col-lg-5 formBx">
                            <textarea placeholder="Isi Laporan" name="pesan" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div class="col-lg-5 formBx">
                            <input type="submit" name="create" id="" value="Kirim"
                                onclick="return confirm('Patikan Pesan tidak mengandung unsur Sara!');">
                        </div>
                    </div>
                </form>
            </section>
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

    <?php include 'information.php' ?>
    <?php include 'footer.php' ?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Fontawesome Script -->
    <script src="https://kit.fontawesome.com/425c04640d.js" crossorigin="anonymous"></script>

</body>

</html>