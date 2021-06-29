<?php
    include('functions.php');

    session_start();
    if (!isset($_SESSION['username'])){
    header("Location: login.php");
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OpenSID Kabupaten Bengkalis</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <?php include 'header.php' ?>

        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <a href="index.php" class="brand-link">
                <span class="brand-text font-weight-light">OpenSID <span style="font-size: 14px;">Kabupaten
                        Bengkalis</span></span>
            </a>

            <div class="sidebar">
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Dashboard -->
                        <li class="nav-item menu-open">
                            <a href="index.php" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                        </li>
                        <!-- Siaga Covid -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-th"></i>
                                <p>
                                    Siaga Covid
                                    <span class="right badge badge-danger">New</span>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/siaga-covid/pendataan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pendataan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/siaga-covid/pemantauan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kategori</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-header">Admin Web</li>
                        <!-- Berita -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Berita
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/berita/berita.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Berita</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/berita/kategori.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kategori</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Galeri -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon far fa-image"></i>
                                <p>
                                    Geleri
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/galeri/foto.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Foto</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/galeri/video.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Video</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Statistik -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-chart-pie"></i>
                                <p>
                                    Statistik
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/statistik/Umur.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Umur</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/statistik/umur.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Umur</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/statistik/perkawinan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Status Perkawinan</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Informasi Kabupaten -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Informasi Kabupaten
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/informasi-kabupaten/identitas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Identitas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/informasi-kabupaten/wilayah-administrasi.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Wilayah Administrasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/informasi-kabupaten/pemerintahan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pemerintahan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/informasi-kabupaten/bantuan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Bantuan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/informasi-kabupaten/sejarah.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Sejarah</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Pariwisata -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tree"></i>
                                <p>
                                    Pariwisata
                                    <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="pages/pariwisata/wisata.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>wisata</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/pariwisata/kuliner.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kuliner</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="pages/pariwisata/penginapan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Penginapan</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="pages/informasi/informasi.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Informasi
                                </p>
                            </a>
                        </li>
                        <!-- cctv -->
                        <li class="nav-item">
                            <a href="pages/cctv/cctv.php" class="nav-link">
                                <i class="nav-icon fas fa-ellipsis-h"></i>
                                <p>CCTV</p>
                            </a>
                        </li>
                        <!-- agenda -->
                        <li class="nav-item">
                            <a href="pages/agenda/agenda.php" class="nav-link">
                                <i class="nav-icon fas fa-book"></i>
                                <p>
                                    Agenda
                                </p>
                            </a>
                        </li>
                        <!-- kontak masuk -->
                        <li class="nav-item">
                            <a href="pages/kontak-masuk/kontak-masuk.php" class="nav-link">
                                <i class="nav-icon far fa-envelope"></i>
                                <p>
                                    Kontak Masuk
                                    <span class="badge badge-info right">2</span>
                                </p>
                            </a>
                        </li>
                        <!-- slider -->
                        <li class="nav-item">
                            <a href="pages/slider/slider.php" class="nav-link">
                                <i class="nav-icon fas fa-columns"></i>
                                <p>
                                    Slider
                                </p>
                            </a>
                        </li>
                        <!-- pengguna -->
                        <li class="nav-item">
                            <a href="pages/pengguna/pengguna.php" class="nav-link">
                                <i class="nav-icon far fa-plus-square"></i>
                                <p>
                                    Pengguna
                                </p>
                            </a>
                        </li>
                        <!-- logout -->
                        <li class="nav-item">
                            <a href="logout.php" class="nav-link">
                                <i class="nav-icon fas fa-sign-out-alt"></i>
                                <p>
                                    Logout
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>

        <div class="content-wrapper">
            <section class="content">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-info">
                                <div class="inner">
                                    <h2>Berita Terbaru</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="pages/berita/berita.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-success">
                                <div class="inner">
                                    <h2>Agenda</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-stats-bars"></i>
                                </div>
                                <a href="pages/agenda/agenda.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-warning">
                                <div class="inner">
                                    <h2>Galeri Foto</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="pages/galeri/foto.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-danger">
                                <div class="inner">
                                    <h2>Galeri Video</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                </div>
                                <a href="pages/galeri/video.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-secondary">
                                <div class="inner">
                                    <h2>CCTV</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="pages/cctv/cctv.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-light">
                                <div class="inner">
                                    <h2>Slider</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-pie-graph"></i>
                                </div>
                                <a href="pages/slider/slider.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-primary">
                                <div class="inner">
                                    <h2>Wisata</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="pages/pariwisata/wisata.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-6 col-6">
                            <div class="small-box bg-info">
                                <div class="inner">
                                    <h2>Kuliner</h2>
                                    <br><br>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-stats-bars"></i>
                                </div>
                                <a href="pages/pariwisata/kuliner.php" class="small-box-footer">More info <i
                                        class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
        </div>

        <?php include 'footer.php' ?>
    </div>

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- ChartJS -->
    <script src="plugins/chart.js/Chart.min.js"></script>
    <!-- Sparkline -->
    <script src="plugins/sparklines/sparkline.js"></script>
    <!-- JQVMap -->
    <script src="plugins/jqvmap/jquery.vmap.min.js"></script>
    <script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="plugins/jquery-knob/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="plugins/moment/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
    <!-- Summernote -->
    <script src="plugins/summernote/summernote-bs4.min.js"></script>
    <!-- overlayScrollbars -->
    <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>
</body>

</html>