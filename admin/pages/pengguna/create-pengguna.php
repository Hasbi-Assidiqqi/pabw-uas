<?php
require '../../functions.php';
$koneksi = koneksiUas();

if(isset($_POST["create"])){
    if(createPengguna($_POST) > 0){
        echo"<script>
        alert('data berhasil di tambahkan !');
        document.location.href='pengguna.php';
        </script>";
    }
    else{
        echo "<script>
        alert('data gagal di tambahkan ');
        document.location.href='pengguna.php';
        </script>";
        echo mysqli_error($koneksi);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../utils/link.php' ?>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <?php include '../../header.php' ?>

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
                            <a href="../../index.php" class="nav-link">
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
                                    <a href="../siaga-covid/pendataan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pendataan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../siaga-covid/pemantauan.php" class="nav-link">
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
                                    <a href="../berita/berita.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Berita</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../berita/kategori.php" class="nav-link">
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
                                    <a href="../galeri/foto.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Foto</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../galeri/video.php" class="nav-link">
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
                                    <a href="../statistik/Umur.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Umur</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../statistik/umur.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Umur</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../statistik/perkawinan.php" class="nav-link">
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
                                    <a href="../informasi-kabupaten/identitas.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Identitas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../informasi-kabupaten/wilayah-administrasi.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Wilayah Administrasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../informasi-kabupaten/pemerintahan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Pemerintahan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../informasi-kabupaten/bantuan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Bantuan</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../informasi-kabupaten/sejarah.php" class="nav-link">
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
                                    <a href="../pariwisata/wisata.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>wisata</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../pariwisata/kuliner.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Kuliner</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../pariwisata/penginapan.php" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Penginapan</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="../informasi/informasi.php" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Informasi
                                </p>
                            </a>
                        </li>
                        <!-- cctv -->
                        <li class="nav-item">
                            <a href="../cctv/cctv.php" class="nav-link">
                                <i class="nav-icon fas fa-ellipsis-h"></i>
                                <p>CCTV</p>
                            </a>
                        </li>
                        <!-- agenda -->
                        <li class="nav-item">
                            <a href="../agenda/agenda.php" class="nav-link">
                                <i class="nav-icon fas fa-book"></i>
                                <p>
                                    Agenda
                                </p>
                            </a>
                        </li>
                        <!-- kontak masuk -->
                        <li class="nav-item">
                            <a href="../kontak-masuk/kontak-masuk.php" class="nav-link">
                                <i class="nav-icon far fa-envelope"></i>
                                <p>
                                    Kontak Masuk
                                    <span class="badge badge-info right">2</span>
                                </p>
                            </a>
                        </li>
                        <!-- slider -->
                        <li class="nav-item">
                            <a href="../slider/slider.php" class="nav-link">
                                <i class="nav-icon fas fa-columns"></i>
                                <p>
                                    Slider
                                </p>
                            </a>
                        </li>
                        <!-- pengguna -->
                        <li class="nav-item">
                            <a href="pengguna.php" class="nav-link active">
                                <i class="nav-icon far fa-plus-square"></i>
                                <p>
                                    Pengguna
                                </p>
                            </a>
                        </li>
                        <!-- logout -->
                        <li class="nav-item">
                            <a href="../../logout.php" class="nav-link">
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
            <section style="margin-top: 72px;" class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Tambah Pengguna OpenSID Kabupaten Bengkalis</h3>
                                </div>
                                <div class="card-body">
                                    <form role="form" method="POST" action="" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Nama Lengkap</label>
                                            <input class="form-control" name="nama_lengkap" id="nama_lengkap" />
                                        </div>
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input class="form-control" name="username" id="username" />
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" name="password" id="password" />
                                        </div>
                                        <div>
                                            <input type="submit" name="create" value="Tambah" class="btn btn-primary">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <?php include '../../footer.php' ?>
    </div>

    <?php include '../utils/script.php' ?>
</body>

</html>